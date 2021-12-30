models = ActiveRecord::Base.descendants
not_real_model_names = %w[ActiveRecord::SchemaMigration ActiveRecord::InternalMetadata ApplicationRecord]

results = models.each_with_object({}) do |model, temporary_results|
  next if not_real_model_names.include?(model.name)

  temporary_results[model.name] = model.count
end

puts
puts
puts 'Summary'
puts '-' * 20
results.each do |model_name, model_count|
  puts "#{model_name}: #{model_count}"
end
