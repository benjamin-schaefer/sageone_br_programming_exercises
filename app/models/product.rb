class Product < ActiveRecord::Base
  def self.import(file) 

    print "*" * 30
    print file
    print "*" * 30

    case File.extname(file.original_filename)
      when '.csv'
        import_csv(file)
      when '.txt'
        import_txt(file)
      else
        raise 'Unsupported file format - only csv and txt import submitted'
      end
  end

  # blueBill
  def self.import_csv(file)
    CSV.foreach(file.path, headers:true, col_sep: ';') do |row|
      product = Product.new(
        category: row['Categoria'],
        unity: row['Unidade'],
        description: row['Descrição'],
        identification: row['Identificação'],
        cost: row['Custo'],
        selling_price_1: row['Preço de Venda 1'],
        observations: row['Observaçőes'],
        provider: row['Fornecedor'],
        inventory: row['Estoque'],
        barcode: row['Cód. Barra'],
        selling_price_2: row['Preço de Venda 2'],
        selling_price_3: row['Preço de Venda 3'],
        min_stock: row['Estoque Mínimo'],
        max_stock: row['Estoque Máximo'],
        stock_purchase: row['Estoque Compra'],
        factor_pcs_of_sales: row['Fator unid. de venda'],
        ncm: row['NCM'],
        brand: row['Marca'],
        weight: row['Peso'],
        size: row['Tamanho'],
        inactive: row['Inativo'],
        kind: row['Tipo'],
        composition: row['Composição'],
        feedstock: row['Matéria Prima'],
        material_imprint: row['Material Expediente'],
        for_sale: row['Para Venda'],
        coin: row['Moeda']
      )
      try_save(product)
    end
  end

  # youDoInvoice
  def self.import_txt(file)
    file = File.open(file.path)

    while(row = file.gets)
      next unless row[0] == 'I'
      cols = row.split('|')
      product = Product.new(
        code: cols[1],
        description: cols[2],
        barcode: cols[9] || cols[3],
        ncm: cols[4],
        pip: cols[5],
        gender: cols[6],
        unity: cols[7],
        value: cols[10] || cols[8],
        quantity: cols[11]
      )
      try_save(product)
    end
  end

  def self.try_save(product)
    if product.valid?
      product.save 
    else
      raise product.errors 
    end    
  end

end