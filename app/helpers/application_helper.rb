module ApplicationHelper
  def default_meta_tags
    {
      site: 'freemarket_sample_65a',
      title: 'Fmarket',
      reverse: true,
      charset: 'utf-8',
      description: 'プログラムスクールでチーム開発したwebアプリです',
      keywords: 'フリマ,フリーマーケット',
      icon: image_url("favicon.ico"),
    }
  end
end
