INPUT_TEMPLATE := template.html
INPUT_YAML := data.yaml

OUT_HTML := cv.html

all: $(OUT_HTML)

$(OUT_HTML): $(INPUT_TEMPLATE) $(INPUT_YAML)
	tera --yaml $(INPUT_YAML) --file $(INPUT_TEMPLATE) > $(OUT_HTML)

.PHONY: clean

clean:
	@rm -f $(OUT_HTML)
