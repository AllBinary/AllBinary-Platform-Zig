// Generated Code Do Not Modify
// package org.allbinary.logic.visual.media

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
// const RenderedImage = @import("java/awt/image/RenderedImage.zig").RenderedImage;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const ImageIOUtil = @import("org/allbinary/logic/visual/media/ImageIOUtil.zig").ImageIOUtil;
const MediaData = @import("org/allbinary/logic/visual/media/MediaData.zig").MediaData;

//import com.sun.imageio.plugins.common.ImageUtil;
pub const MediaUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.media.MediaUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*MediaUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MediaUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*MediaUtil {
        return Inheritance.upcast(?*MediaUtil, MediaUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn saveImageFile(self: *Self, originalImageFile: ?*AbFile, newImageFileName: ?*String, category: ?*String, mediaData: ?*MediaData, newWidth: i32, newHeight: i32) void {
        if (originalImageFile == null or !originalImageFile.?.isFile()) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Original Image File Does Not Exist."); break :exception error.Exception; }});
        }
        const bufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.callStatic(ImageIOUtil, "read", .{ originalImageFile }));
        if (bufferedImage == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Unable to find ImageReader for this file."); break :exception error.Exception; }});
        }
        if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.VIEW })) {
            const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(self, "getImageBufferPropertyHashMap", .{ bufferedImage }));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Image Properties: "), Object.toString(Object.of(hashMap))), self, String.literal("saveImageFile()") });
        }
        const imageFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ String.plus(category, newImageFileName) }));
        _ = imageFile.?.createNewFile();
        const imageUtil: ?*ImageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
        const newBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(imageUtil.?, "createBufferedImageForSave", .{ bufferedImage, newWidth, newHeight }));
        const isWritten: bool = Inheritance.callStatic(ImageIOUtil, "write", .{ Inheritance.cast(?*RenderedImage, newBufferedImage), mediaData.?.getName(), imageFile });
        if (!isWritten) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Unable to write."); break :exception error.Exception; }});
        }
        if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.VIEW })) {
            const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Get Path: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ originalImageFile.?.getPath() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nNewImageFileName: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ newImageFileName });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nCategory: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ category });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nSave File Type: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ mediaData.?.getName() });
            _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nNew") }).?, "append", .{ commonLabels.?.WIDTH_LABEL });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ newWidth });
            _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nNew") }).?, "append", .{ commonLabels.?.HEIGHT_LABEL });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ newHeight });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nFile Length: ") });
            _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @as(i64, @intCast(originalImageFile.?.length())) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nNew File Length: ") });
            _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @as(i64, @intCast(imageFile.?.length())) });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("saveImageFile()") });
        }
    }
    

    pub fn getImageBufferPropertyHashMap(bufferedImage: ?*BufferedImage) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const propertyStringArray: []?*String = bufferedImage.?.getPropertyNames();
        if (propertyStringArray != null) {
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(propertyStringArray.len))) : (index += 1) {
                const propertyObject: ?Object = Inheritance.upcast(?Object, Inheritance.call(bufferedImage.?, "getProperty", .{ propertyStringArray[@intCast(index)] }));
                _ = Inheritance.call(hashMap.?, "put", .{ propertyStringArray[@intCast(index)], Object.toString(Object.of(propertyObject)) });
                }
            }
        }
        return hashMap;
    }
};

