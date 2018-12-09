ArticleCategory.create!([
  {name: "未分類"},
  {name: "プログラミング"}
])
Article.create!([
  {title: "テストタイトル１", body: "テスト本文１", article_category_id: 1},
  {title: "テストタイトル２", body: "テスト本文２", article_category_id: 2},
  {title: "テストタイトル３", body: "テスト本文３", article_category_id: 2}
])
