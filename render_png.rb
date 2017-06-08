require 'shellwords'

DEST_DIR = "cards-png"

`mkdir -p #{DEST_DIR.shellescape}`

Dir.glob("cards-svg/*.svg").each{|src|
  dest = File.join(DEST_DIR, File.basename(src, ".svg") + ".png")

  puts dest

  `svgexport #{src.shellescape} #{dest.shellescape} 2x`
}

