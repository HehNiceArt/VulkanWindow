BUILD_DIR:= bin
CFLAGS = -I/opt/homebrew/include -std=c++11
LDFLAGS = -L/opt/homebrew/lib -lglfw -lvulkan 

$(BUILD_DIR)/triangle: triangle.cpp | $(BUILD_DIR)
	clang++ $(CFLAGS) triangle.cpp -o $(BUILD_DIR)/triangle $(LDFLAGS)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)