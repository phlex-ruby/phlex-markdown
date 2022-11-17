require "phlex/markdown"

describe Phlex::Markdown do
	it "supports multiple headings" do
		output = md <<~MD
			# 1
			## 2
			### 3
			#### 4
			##### 5
			###### 6
		MD

		expect(output).to be ==
			"<h1>1</h1><h2>2</h2><h3>3</h3><h4>4</h4><h5>5</h5><h6>6</h6>"
	end

	it "supports ordered lists" do
		output = md <<~MD
			1. One
			2. Two
			3. Three
		MD

		expect(output).to be ==
			"<ol><li>One</li><li>Two</li><li>Three</li></ol>"
	end

	def md(content)
		Phlex::Markdown.new(content).call
	end
end
