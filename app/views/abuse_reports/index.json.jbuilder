json.array!(@abuse_reports) do |abuse_report|
  json.extract! abuse_report, :id, :title, :description, :article_id
  json.url abuse_report_url(abuse_report, format: :json)
end
