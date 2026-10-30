// 
// To change this license header, choose License Headers in Project Properties. 
// To change this template file, choose Tools | Templates 
// and open the template in the editor.  
// Generated Code Do Not Modify
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const File = @import("java/io/File.zig").File;
// const IOException = @import("java/io/IOException.zig").IOException;
// const Iterator = @import("java/util/Iterator.zig").Iterator;
// const IIOImage = @import("javax/imageio/IIOImage.zig").IIOImage;
// const ImageIO = @import("javax/imageio/ImageIO.zig").ImageIO;
// const ImageWriteParam = @import("javax/imageio/ImageWriteParam.zig").ImageWriteParam;
// const ImageWriter = @import("javax/imageio/ImageWriter.zig").ImageWriter;
// const ImageOutputStream = @import("javax/imageio/stream/ImageOutputStream.zig").ImageOutputStream;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFileOutputStream = @import("org/allbinary/logic/io/AbFileOutputStream.zig").AbFileOutputStream;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const PNGImageWriter = @import("org/apache/batik/ext/awt/image/codec/png/PNGImageWriter.zig").PNGImageWriter;

pub const ImagePersistanceUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImagePersistanceUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    var instance: ?*ImagePersistanceUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImagePersistanceUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ImagePersistanceUtil {
        return Inheritance.upcast(?*ImagePersistanceUtil, ImagePersistanceUtil.instance);
    }
    

    // throws Exception
    pub fn saveWithBatik(self: *Self, file: ?*AbFile, bufferedImage: ?*BufferedImage) void {
        const batikPNGImageWriter: ?*PNGImageWriter = PNGImageWriter.create();
        const fileOutputStream: ?*AbFileOutputStream = Inheritance.upcast(?*AbFileOutputStream, Inheritance.callStatic(AbFileOutputStream, "createFromAbFile", .{ file }));
        { // try
            _ = Inheritance.call(batikPNGImageWriter.?, "writeImage", .{ bufferedImage, fileOutputStream });
        }
        { // finally
            _ = Inheritance.receiver(fileOutputStream.?, "flush").flush();
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ fileOutputStream });
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Wrote Image: "), file.?.getAbsolutePath()), self, self.commonStrings.?.SAVE });
    }
    

    pub fn saveWithImageIO(self: *Self, filePath: ?*String, bufferedImage: ?*BufferedImage) void {
        _ = Inheritance.call(self, "saveWithImageIO", .{ Inheritance.callStatic(File, "create1", .{ filePath }), bufferedImage });
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn saveWithImageIO(self: *Self, file: ?*File, bufferedImage: ?*BufferedImage) void {
        var writer: ?*ImageWriter = null;
        var ios: ?*ImageOutputStream = null;
        { // try
            const iter: ?*Iterator = Inheritance.upcast(?*Iterator, Inheritance.callStatic(ImageIO, "getImageWritersByFormatName", .{ String.literal("jpeg") }));
            if (!iter.?.hasNext()) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Unable to save image to jpeg file type."), self, self.commonStrings.?.SAVE });
                return;
            }
            writer = Inheritance.cast(?*ImageWriter, iter.?.next());
            ios = Inheritance.upcast(@TypeOf(ios), Inheritance.callStatic(ImageIO, "createImageOutputStream", .{ file }));
            _ = Inheritance.call(writer.?, "setOutput", .{ ios });
            const iwp: ?*ImageWriteParam = Inheritance.upcast(?*ImageWriteParam, writer.?.getDefaultWriteParam());
            _ = Inheritance.call(iwp.?, "setCompressionMode", .{ ImageWriteParam.MODE_EXPLICIT });
            _ = Inheritance.call(iwp.?, "setCompressionQuality", .{ 0.95 });
            _ = Inheritance.call(writer.?, "write", .{ null, Inheritance.callStatic(IIOImage, "create3", .{ bufferedImage, null, null }), iwp });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Wrote Image: "), file.?.getAbsolutePath()), self, self.commonStrings.?.SAVE });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.SAVE, e });
        { // finally
            { // try
                if (ios != null) {
                    _ = ios.?.flush();
                    { // try
                        if (ios != null) {
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(ios)), ios, self.commonStrings.?.CLOSE });
                            _ = ios.?.close();
                        }
                    }
                    // catch (Exception e):
//                         _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, ios, self.commonStrings.?.CLOSE, e });
                }
                if (writer != null) {
                    _ = writer.?.dispose();
                }
            }
            // catch (IOException e2):
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.SAVE, e2 });
        }
    }
};

