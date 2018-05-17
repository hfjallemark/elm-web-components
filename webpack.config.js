module.exports = {
  devtool: "inline-source-map",
  entry: "./index.js",
  mode: "development",
  module: {
    rules: [
      {
        include: [/elements/],
        loader: "ts-loader",
        test: /\.ts/,
      },
      {
        include: [/src/],
        test: /\.elm$/,
        use: ["elm-hot-loader", "elm-webpack-loader?forceWatch=true"],
      },
    ],
  },
  resolve: {
    extensions: [".js", ".ts"],
  },
}
