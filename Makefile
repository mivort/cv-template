INPUT_TEMPLATE := template.html
INPUT_YAML := data.yaml

OUT_HTML := cv.html

all: $(OUT_HTML)

$(OUT_HTML): $(INPUT_TEMPLATE) $(INPUT_YAML)
	tera --escape --template $(INPUT_TEMPLATE) $(INPUT_YAML) --out $(OUT_HTML) > /dev/null

.PHONY: clean

clean:
	@rm -f $(OUT_HTML)
