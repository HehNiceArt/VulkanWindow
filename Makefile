BUILD_DIR:= bin
CXXFLAGS = -I/opt/homebrew/include -I/Users/adbq/VulkanSDK/vulkan/macOS/include -std=c++17
LDFLAGS = -L/opt/homebrew/lib -L/Users/adbq/VulkanSDK/vulkan/macOS/lib -lglfw -lvulkan 

$(BUILD_DIR)/triangle: triangle.cpp | $(BUILD_DIR)
	clang++ $(CXXFLAGS) triangle.cpp -o $(BUILD_DIR)/triangle $(LDFLAGS)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)