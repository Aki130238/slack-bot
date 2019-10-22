require "slack-notify"
require 'clockwork'
require 'active_support/time'


module Clockwork
	sample = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
	handler do |job|
    sample.notify("テスト #{job}")
  end

	every(3.minutes, '3minutes iseki-bot test')

end
