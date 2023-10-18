class Wick < Formula
  desc "Wick - a flow-based application framework for WebAssembly"
  homepage "https://candle.dev"
  url "https://github.com/candlecorp/wick/archive/refs/tags/0.16.0.tar.gz"
  sha256 "0324216d6f36b0a79e949f12b80e5ac202afc6d5342cde14a0acf759e1c1fbf0"
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
