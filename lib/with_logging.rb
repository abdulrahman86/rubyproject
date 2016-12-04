require 'aspect'

module WithLogging
  include Aspect

  def with_logging_before(log_statement_before, action)
    before(lambda {puts log_statement_before}, action)
  end

  def with_logging_after(action, log_statement_after)
    after(action, lambda {puts log_statement_after})
  end

  def with_logging_around(log_statement_before, action, log_satement_after)
    around(lambda {puts log_statement_before}, action, lambda{log_satement_after})
  end
end