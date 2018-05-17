module.exports = {
  entry: "./index.js",
  mode: "development",
  module: {
    rules: [
      {
        include: [/src/],
        test: /\.elm$/,
        use: ["elm-hot-loader", "elm-webpack-loader?forceWatch=true"],
      },
    ],
  },
}
