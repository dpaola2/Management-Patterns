task migrate_patterns: :environment do
  Pattern.all.select do |pattern|
    pattern.body.blank? # no body, just a name
  end.map do |pattern|
    # move the name into the body as a paragraph tag
    pattern.update(body: pattern.name)
  end
end