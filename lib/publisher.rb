class Publisher
  def publish message
    puts message
  end
end

$publisher = Publisher.new
$publisher2 = Publisher.new
