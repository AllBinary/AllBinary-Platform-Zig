// Generated Code Do Not Modify
// package org.allbinary.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Closeable = @import("java/io/Closeable.zig").Closeable;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const OutputStream = @import("java/io/OutputStream.zig").OutputStream;
const Feature = @import("org/allbinary/game/configuration/feature/Feature.zig").Feature;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const MainFeatureFactory = @import("org/allbinary/game/configuration/feature/MainFeatureFactory.zig").MainFeatureFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbDataInputStream = @import("org/allbinary/logic/io/AbDataInputStream.zig").AbDataInputStream;
const AbDataOutputStream = @import("org/allbinary/logic/io/AbDataOutputStream.zig").AbDataOutputStream;
const FileStreamFactory = @import("org/allbinary/logic/io/FileStreamFactory.zig").FileStreamFactory;
const NullCloseable = @import("org/allbinary/logic/io/NullCloseable.zig").NullCloseable;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const FileFactory = @import("org/allbinary/logic/io/file/FileFactory.zig").FileFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const ApplicationConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.configuration.ApplicationConfiguration";
    logUtil: ?*LogUtil = null,
    fullscreen: bool = false,
    showTitleBar: bool = false,
    progressBarView: bool = false,
    FILE: ?*String = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.fullscreen = true;
        this.showTitleBar = false;
        this.progressBarView = false;
        this.FILE = String.literal("ReloadConfiguration.dat");
    }
    

    pub fn getInstance() ?*ApplicationConfiguration {
        if (Object.same(ApplicationConfiguration.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            ApplicationConfiguration.instance = Inheritance.upcast(@TypeOf(ApplicationConfiguration.instance), ApplicationConfiguration.create());
        }
        return Inheritance.cast(?*ApplicationConfiguration, ApplicationConfiguration.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            if (Inheritance.call(FileFactory.getInstance().?, "isFile", .{ this.FILE })) {
                _ = this.read();
            } else {
                _ = this.write();
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(this.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, this, commonStrings.?.CONSTRUCTOR, e });
        return this;
    }
    

    // throws Exception
    pub fn read(self: *Self) void {
        const fileInputStreamFactory: ?*FileStreamFactory = Inheritance.upcast(?*FileStreamFactory, FileStreamFactory.getInstance());
        const fileInputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(fileInputStreamFactory.?, "getFileInputStreamInstance", .{ StringUtil.getInstance().?.EMPTY_STRING, self.FILE }));
        const dataInputStream: ?*AbDataInputStream = Inheritance.callStatic(AbDataInputStream, "create1", .{ fileInputStream });
        const fullScreen: i32 = dataInputStream.?.readInt();
        if (fullScreen == 0) {
            _ = Inheritance.call(self, "setFullscreen", .{ false });
        } else if (fullScreen == 1) {
            _ = Inheritance.call(self, "setFullscreen", .{ true });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Invalid FullScreen ActivityConfiguration"); break :exception error.Exception; }});
        }
        const progressBarView: i32 = dataInputStream.?.readInt();
        if (progressBarView == 0) {
            _ = Inheritance.call(self, "setProgressBarView", .{ false });
        } else if (progressBarView == 1) {
            _ = Inheritance.call(self, "setProgressBarView", .{ true });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Invalid ProgressBarView ActivityConfiguration"); break :exception error.Exception; }});
        }
        const showTitleBar: i32 = dataInputStream.?.readInt();
        if (showTitleBar == 0) {
            _ = Inheritance.call(self, "setShowTitleBar", .{ false });
        } else if (showTitleBar == 1) {
            _ = Inheritance.call(self, "setShowTitleBar", .{ true });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Invalid ShowTitleBar ActivityConfiguration"); break :exception error.Exception; }});
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Read Configuration: "), Object.toString(Object.of(self))), self, String.literal("read") });
    }
    

    // throws Exception
    pub fn write(self: *Self) void {
        var closeable: ?*Closeable = Inheritance.upcast(?*Closeable, NullCloseable.NULL_CLOSEABLE);
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Write Configuration: "), Object.toString(Object.of(self))), self, String.literal("write") });
            const fileInputStreamFactory: ?*FileStreamFactory = Inheritance.upcast(?*FileStreamFactory, FileStreamFactory.getInstance());
            const fileOutputStream: ?*OutputStream = Inheritance.upcast(?*OutputStream, Inheritance.call(fileInputStreamFactory.?, "getFileOutputStreamInstance", .{ StringUtil.getInstance().?.EMPTY_STRING, self.FILE }));
            const dataOutputStream: ?*AbDataOutputStream = Inheritance.callStatic(AbDataOutputStream, "create1", .{ fileOutputStream });
            closeable = Inheritance.upcast(@TypeOf(closeable), dataOutputStream);
            if (self.isFullscreen()) {
                _ = Inheritance.call(dataOutputStream.?, "writeInt", .{ 1 });
            } else {
                _ = Inheritance.call(dataOutputStream.?, "writeInt", .{ 0 });
            }
            if (self.isProgressBarView()) {
                _ = Inheritance.call(dataOutputStream.?, "writeInt", .{ 1 });
            } else {
                _ = Inheritance.call(dataOutputStream.?, "writeInt", .{ 0 });
            }
            if (self.isShowTitleBar()) {
                _ = Inheritance.call(dataOutputStream.?, "writeInt", .{ 1 });
            } else {
                _ = Inheritance.call(dataOutputStream.?, "writeInt", .{ 0 });
            }
            _ = dataOutputStream.?.flush();
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ closeable });
        }
    }
    

    // throws Exception
    pub fn update(self: *Self, gameFeature: ?*Feature) void {
        if (Object.same(gameFeature, MainFeatureFactory.getInstance().?.FULL_SCREEN)) {
            const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
            if (Inheritance.call(features.?, "isFeature", .{ gameFeature })) {
                if (!self.isFullscreen()) {
                    _ = Inheritance.call(self, "setFullscreen", .{ true });
                    _ = self.write();
                }
            } else {
                if (self.isFullscreen()) {
                    _ = Inheritance.call(self, "setFullscreen", .{ false });
                    _ = self.write();
                }
            }
        }
    }
    

    pub fn setFullscreen(self: *Self, fullscreen: bool) void {
        self.fullscreen = fullscreen;
    }
    

    pub fn isFullscreen(self: *Self) bool {
        return self.fullscreen;
    }
    

    pub fn setShowTitleBar(self: *Self, showTitleBar: bool) void {
        self.showTitleBar = showTitleBar;
    }
    

    pub fn isShowTitleBar(self: *Self) bool {
        return self.showTitleBar;
    }
    

    pub fn setProgressBarView(self: *Self, progressBarView: bool) void {
        self.progressBarView = progressBarView;
    }
    

    pub fn isProgressBarView(self: *Self) bool {
        return self.progressBarView;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("isFullscreen: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isFullscreen() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" isProgressBarView: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isProgressBarView() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" isShowTitleBar: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isShowTitleBar() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

