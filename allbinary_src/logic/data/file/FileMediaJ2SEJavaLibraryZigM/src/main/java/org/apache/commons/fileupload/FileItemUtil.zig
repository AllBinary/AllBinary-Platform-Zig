// Generated Code Do Not Modify
// package org.apache.commons.fileupload

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbFileNativeUtil = @import("org/allbinary/logic/io/file/AbFileNativeUtil.zig").AbFileNativeUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const FileItemUtil = struct {
    const Self = @This();
    pub const java_name = "org.apache.commons.fileupload.FileItemUtil";
    logUtil: ?*LogUtil = null,
    DEFAULT_CHARSET: ?*String = null,
    var instance: ?*FileItemUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FileItemUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.DEFAULT_CHARSET = String.literal("ISO-8859-1");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*FileItemUtil {
        return Inheritance.upcast(?*FileItemUtil, FileItemUtil.instance);
    }
    

    // throws Exception
    pub fn getString(self: *Self, byteArray: []i8) ?*String {
        return Inheritance.callStatic(String, "create2", .{ byteArray, self.DEFAULT_CHARSET });
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getString(self: *Self, fileItem: ?*FileItemStream) ?*String {
        return Inheritance.callStatic(String, "create2", .{ Inheritance.call(self, "getBytes", .{ fileItem }), self.DEFAULT_CHARSET });
    }
    

    // throws Exception
    pub fn getBytes(self: *Self, fileItem: ?*FileItemStream) []i8 {
        const streamUtil: ?*StreamUtil = Inheritance.upcast(?*StreamUtil, StreamUtil.getInstance());
        var inputStream: ?*InputStream = null;
        var outputStream: ?*ByteArrayOutputStream = null;
        { // try
            inputStream = Inheritance.upcast(@TypeOf(inputStream), fileItem.?.openStream());
            outputStream = ByteArrayOutputStream.create();
            if (fileItem.?.isFormField()) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("FileItemStream FieldName: "), fileItem.?.getFieldName()), self, String.literal("write()") });
            } else {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Uploaded File FieldName: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ fileItem.?.getFieldName() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" name = ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ fileItem.?.getName() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("write()") });
            }
            outputStream = Inheritance.cast(?*ByteArrayOutputStream, Inheritance.call(streamUtil.?, "get", .{ inputStream, outputStream, array_N66810: { const array_N66810_array = allocator.alloc(i8, @intCast(16384)) catch unreachable; @memset(array_N66810_array, 0); break :array_N66810 array_N66810_array; } }));
            return outputStream.?.toByteArray();
        }
        { // finally
            _ = Inheritance.call(streamUtil.?, "close", .{ outputStream });
            _ = Inheritance.call(streamUtil.?, "close", .{ inputStream });
        }
    }
    

    // throws Exception
    pub fn write(self: *Self, fileItem: ?*FileItem, file: ?*AbFile) void {
        _ = self;
        _ = Inheritance.call(fileItem.?, "write", .{ Inheritance.callStatic(AbFileNativeUtil, "get", .{ file }) });
    }
};

