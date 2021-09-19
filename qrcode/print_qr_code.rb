# frozen_string_literal:true

require 'prawn/qrcode'
class QRGeneratorPdf
  attr_accessor :qr_data, :text, :size, :file_name

  def initialize(qr_data, text, size, file_name)
    @qr_data    = qr_data
    @text       = text
    @file_name  = file_name
    @size       = size
  end

  def call
    qrcode_content = @qr_data
    qrcode = RQRCode::QRCode.new(qrcode_content, level: :h, size: 5)

    # Render a prepared QRCode at he cursor position
    # using a default module (e.g. dot) size of 1pt or 1/72 in
    Prawn::Document::new do
      text @text, align: :center
      move_down 15
      render_qr_code(qrcode, dot: 12, align: :center)
      render_file("qr.pdf")
    end

  end

  def self.call(qr_data:, text:, size:, file_name:)
    new(qr_data, text, size, file_name).call
  end

end


QRGeneratorPdf.call(qr_data: 'https://www.google.com', text: 'My Url For Test', size: 12, file_name: 'payman')
