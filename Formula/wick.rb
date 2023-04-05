class Wick < Formula
  desc "Wick - a flow-based application framework for WebAssembly"
  homepage "https://candle.dev"
  url "https://github.com/candlecorp/wick/archive/refs/tags/0.5.0.tar.gz"
  sha256 "68c9246e43e2aaa6ba390ba8cf081d8203eb38cd04c8232e7e2855cb1c491b10"
  license "Elastic License 2.0"
  head "https://github.com/candlecorp/wick.git", branch: "main"

  depends_on "rust" => :build
  depends_on "protobuf" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/bins/wick")
  end

  test do
    system "#{bin}/wick", "-V"
  end
end
