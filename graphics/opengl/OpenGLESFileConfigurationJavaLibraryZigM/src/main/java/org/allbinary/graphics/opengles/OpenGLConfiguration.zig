//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Closeable = @import("java/io/Closeable.zig").Closeable;
// const DataInputStream = @import("java/io/DataInputStream.zig").DataInputStream;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const OutputStream = @import("java/io/OutputStream.zig").OutputStream;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const AbDataOutputStream = @import("org/allbinary/logic/io/AbDataOutputStream.zig").AbDataOutputStream;
const FileStreamFactory = @import("org/allbinary/logic/io/FileStreamFactory.zig").FileStreamFactory;
const StreamUtil = @import("org/allbinary/logic/io/StreamUtil.zig").StreamUtil;
const FileFactory = @import("org/allbinary/logic/io/file/FileFactory.zig").FileFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const ChangedGameFeatureListener = @import("org/allbinary/game/configuration/event/ChangedGameFeatureListener.zig").ChangedGameFeatureListener;
const Feature = @import("org/allbinary/game/configuration/feature/Feature.zig").Feature;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const MainFeatureFactory = @import("org/allbinary/game/configuration/feature/MainFeatureFactory.zig").MainFeatureFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const NullCloseable = @import("org/allbinary/logic/io/NullCloseable.zig").NullCloseable;
const OpenGLFeature = @import("org/allbinary/graphics/opengles/OpenGLFeature.zig").OpenGLFeature;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;

pub const OpenGLConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLConfiguration";
    logUtil: ?*LogUtil = null,
    FILE: ?*String = null,
    commonStrings: ?*CommonStrings = null,
    tsUtil: ?*TsUtil = null,
    opengl: bool = false,
    @"type": ?*OpenGLFeature = null,
    imageColor: ?*OpenGLFeature = null,
    color: ?*OpenGLFeature = null,
    versionSelector: ?*OpenGLFeature = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.FILE = String.literal("OpenGLConfiguration.dat");
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        this.opengl = false;
        this.@"type" = Inheritance.upcast(?*OpenGLFeature, OpenGLFeatureFactory.getInstance().?.OPENGL_AS_GAME_THREAD);
        this.imageColor = Inheritance.upcast(?*OpenGLFeature, OpenGLFeatureFactory.getInstance().?.IMAGE_COLOR_DEPTH_4444);
        this.color = Inheritance.upcast(?*OpenGLFeature, OpenGLFeatureFactory.getInstance().?.IMAGE_COLOR_DEPTH_4444);
        this.versionSelector = Inheritance.upcast(?*OpenGLFeature, OpenGLFeatureFactory.getInstance().?.OPENGL_AUTO_SELECT);
    }
    

    pub fn getInstance() ?*OpenGLConfiguration {
        if (Object.same(OpenGLConfiguration.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            OpenGLConfiguration.instance = Inheritance.upcast(@TypeOf(OpenGLConfiguration.instance), OpenGLConfiguration.create());
        }
        return Inheritance.cast(?*OpenGLConfiguration, OpenGLConfiguration.instance);
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
//             _ = Inheritance.call(this.logUtil.?, "put", .{ this.commonStrings.?.EXCEPTION, this, this.commonStrings.?.CONSTRUCTOR, e });
        return this;
    }
    

    // throws Exception
    pub fn read(self: *Self) void {
        const openGLFeatureFactory: ?*OpenGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
        const fileInputStreamFactory: ?*FileStreamFactory = Inheritance.upcast(?*FileStreamFactory, FileStreamFactory.getInstance());
        const fileInputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(fileInputStreamFactory.?, "getFileInputStreamInstance", .{ StringUtil.getInstance().?.EMPTY_STRING, self.FILE }));
        const dataInputStream: ?*DataInputStream = Inheritance.callStatic(DataInputStream, "create1", .{ fileInputStream });
        const openGLValue: i32 = dataInputStream.?.readInt();
        if (openGLValue == 0) {
            _ = Inheritance.call(self, "setOpenGL", .{ false });
        } else if (openGLValue == 1) {
            _ = Inheritance.call(self, "setOpenGL", .{ true });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Invalid OpenGL Setting"); break :exception error.Exception; }});
        }
        const version: ?*String = Inheritance.upcast(?*String, dataInputStream.?.readUTF());
        if (Inheritance.call(self.tsUtil.?, "compareTo", .{ version, Inheritance.receiverOf(openGLFeatureFactory.?.OPENGL_AUTO_SELECT.?, "getName").getName() }) == 0) {
            _ = Inheritance.call(self, "setVersionSelector", .{ openGLFeatureFactory.?.OPENGL_AUTO_SELECT });
        } else if (Inheritance.call(self.tsUtil.?, "compareTo", .{ version, Inheritance.receiverOf(openGLFeatureFactory.?.OPENGL_MINIMUM.?, "getName").getName() }) == 0) {
            _ = Inheritance.call(self, "setVersionSelector", .{ openGLFeatureFactory.?.OPENGL_MINIMUM });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("OpenGLConfiguration: Error reading version selector: "), version); break :exception error.Exception; }});
        }
        const @"type": ?*String = Inheritance.upcast(?*String, dataInputStream.?.readUTF());
        if (Inheritance.call(self.tsUtil.?, "compareTo", .{ @"type", Inheritance.receiverOf(openGLFeatureFactory.?.OPENGL_AS_GAME_THREAD.?, "getName").getName() }) == 0) {
            _ = Inheritance.call(self, "setType", .{ openGLFeatureFactory.?.OPENGL_AS_GAME_THREAD });
        } else if (Inheritance.call(self.tsUtil.?, "compareTo", .{ @"type", Inheritance.receiverOf(openGLFeatureFactory.?.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.?, "getName").getName() }) == 0) {
            _ = Inheritance.call(self, "setType", .{ openGLFeatureFactory.?.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("OpenGLConfiguration: Error reading image color"); break :exception error.Exception; }});
        }
        const imageColor: ?*String = Inheritance.upcast(?*String, dataInputStream.?.readUTF());
        if (Inheritance.call(self.tsUtil.?, "compareTo", .{ imageColor, Inheritance.receiverOf(openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_4444.?, "getName").getName() }) == 0) {
            _ = Inheritance.call(self, "setImageColor", .{ openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_4444 });
        } else if (Inheritance.call(self.tsUtil.?, "compareTo", .{ imageColor, Inheritance.receiverOf(openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_4444.?, "getName").getName() }) == 0) {
            _ = Inheritance.call(self, "setImageColor", .{ openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_4444 });
        } else if (Inheritance.call(self.tsUtil.?, "compareTo", .{ imageColor, Inheritance.receiverOf(openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_4444.?, "getName").getName() }) == 0) {
            _ = Inheritance.call(self, "setImageColor", .{ openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_4444 });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("OpenGLConfiguration: Error reading image color: "), imageColor); break :exception error.Exception; }});
        }
        const color: ?*String = Inheritance.upcast(?*String, dataInputStream.?.readUTF());
        if (Inheritance.call(self.tsUtil.?, "compareTo", .{ color, Inheritance.receiverOf(openGLFeatureFactory.?.OPENGL_COLOR_DEPTH_4444.?, "getName").getName() }) == 0) {
            _ = Inheritance.call(self, "setColor", .{ openGLFeatureFactory.?.OPENGL_COLOR_DEPTH_4444 });
        } else if (Inheritance.call(self.tsUtil.?, "compareTo", .{ color, Inheritance.receiverOf(openGLFeatureFactory.?.OPENGL_COLOR_DEPTH_565.?, "getName").getName() }) == 0) {
            _ = Inheritance.call(self, "setColor", .{ openGLFeatureFactory.?.OPENGL_COLOR_DEPTH_565 });
        } else if (Inheritance.call(self.tsUtil.?, "compareTo", .{ color, Inheritance.receiverOf(openGLFeatureFactory.?.OPENGL_COLOR_DEPTH_8888.?, "getName").getName() }) == 0) {
            _ = Inheritance.call(self, "setColor", .{ openGLFeatureFactory.?.OPENGL_COLOR_DEPTH_8888 });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("OpenGLConfiguration: Error reading color: "), color); break :exception error.Exception; }});
        }
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Read Configuration: "), Object.toString(Object.of(self))), self, String.literal("read") });
    }
    

    // throws Exception
    pub fn write(self: *Self) void {
        var closeable: ?*Closeable = Inheritance.upcast(?*Closeable, NullCloseable.NULL_CLOSEABLE);
        { // try
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Write Configuration: "), Object.toString(Object.of(self))), self, String.literal("write") });
            const fileInputStreamFactory: ?*FileStreamFactory = Inheritance.upcast(?*FileStreamFactory, FileStreamFactory.getInstance());
            const fileOutputStream: ?*OutputStream = Inheritance.upcast(?*OutputStream, Inheritance.call(fileInputStreamFactory.?, "getFileOutputStreamInstance", .{ StringUtil.getInstance().?.EMPTY_STRING, self.FILE }));
            const dataOutputStream: ?*AbDataOutputStream = Inheritance.callStatic(AbDataOutputStream, "create1", .{ fileOutputStream });
            closeable = Inheritance.upcast(@TypeOf(closeable), dataOutputStream);
            if (self.isOpenGL()) {
                _ = Inheritance.call(dataOutputStream.?, "writeInt", .{ 1 });
            } else {
                _ = Inheritance.call(dataOutputStream.?, "writeInt", .{ 0 });
            }
            _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.receiverOf(self.getVersionSelector().?, "getName").getName() });
            _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.receiverOf(self.getType().?, "getName").getName() });
            _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.receiverOf(self.getImageColor().?, "getName").getName() });
            _ = Inheritance.call(dataOutputStream.?, "writeUTF", .{ Inheritance.receiverOf(self.getColor().?, "getName").getName() });
            _ = Inheritance.receiver(dataOutputStream.?, "flush").flush();
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
        { // finally
            _ = Inheritance.call(StreamUtil.getInstance().?, "close", .{ closeable });
        }
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (Inheritance.call(ChangedGameFeatureListener.getInstance().?, "isChangedFeature", .{ MainFeatureFactory.getInstance().?.STATIC })) {
            const openGLFeatureFactory: ?*OpenGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
            if (self.isOpenGL()) {
                if (Inheritance.call(features.?, "isFeature", .{ openGLFeatureFactory.?.OPENGL_2D }) or Inheritance.call(features.?, "isFeature", .{ openGLFeatureFactory.?.OPENGL_3D }) or Inheritance.call(features.?, "isFeature", .{ openGLFeatureFactory.?.OPENGL_2D_AND_3D })) {
                    if (!Inheritance.call(features.?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Turning on OpenGL as Default"), self, self.commonStrings.?.INIT });
                        _ = Inheritance.call(features.?, "addDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL });
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Using OpenGL Type Feature: "), self.getType()), self, self.commonStrings.?.INIT });
                        _ = Inheritance.call(features.?, "addDefault", .{ self.getType() });
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Using OpenGL ImageColor Feature: "), self.getImageColor()), self, self.commonStrings.?.INIT });
                        _ = Inheritance.call(features.?, "addDefault", .{ self.getImageColor() });
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Using OpenGL Color Feature: "), self.getColor()), self, self.commonStrings.?.INIT });
                        _ = Inheritance.call(features.?, "addDefault", .{ self.getColor() });
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Using OpenGL Version Selector Feature: "), self.getVersionSelector()), self, self.commonStrings.?.INIT });
                        _ = Inheritance.call(features.?, "addDefault", .{ self.getVersionSelector() });
                    }
                } else {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("OpenGL is enabled, but this game does not support OpenGL (Probably from installing with the same package name from a game that had OpenGL available)"), self, self.commonStrings.?.INIT });
                }
            } else {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("OpenGL is Off"), self, self.commonStrings.?.INIT });
            }
        } else {
            if (self.isOpenGL() and !Inheritance.call(features.?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("OpenGL is set but not Enabled since statics where not cleared (Reboot or Complete exit is Required)"), self, self.commonStrings.?.INIT });
            }
        }
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(self)), self, self.commonStrings.?.INIT });
    }
    

    // throws Exception
    pub fn update(self: *Self, gameFeature: ?*Feature, colorLocked: bool) void {
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const openGLFeatureFactory: ?*OpenGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
        var modified: bool = false;
        if (Object.same(gameFeature, openGLFeatureFactory.?.OPENGL)) {
            if (Inheritance.call(features.?, "isFeature", .{ gameFeature })) {
                if (!self.isOpenGL()) {
                    _ = Inheritance.call(self, "setOpenGL", .{ true });
                    modified = true;
                }
            } else {
                if (self.isOpenGL()) {
                    _ = Inheritance.call(self, "setOpenGL", .{ false });
                    modified = true;
                }
            }
        }
        if (Object.same(gameFeature, openGLFeatureFactory.?.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS) or Object.same(gameFeature, openGLFeatureFactory.?.OPENGL_AS_GAME_THREAD)) {
            if (Inheritance.call(features.?, "isFeature", .{ gameFeature })) {
                if (!Object.same(gameFeature, self.getType())) {
                    _ = Inheritance.call(self, "setType", .{ Inheritance.cast(?*OpenGLFeature, gameFeature) });
                    modified = true;
                }
            }
        }
        if (Object.same(gameFeature, openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_4444) or Object.same(gameFeature, openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_565) or Object.same(gameFeature, openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_8888)) {
            if (Inheritance.call(features.?, "isFeature", .{ gameFeature })) {
                if (!Object.same(self.getImageColor(), gameFeature)) {
                    _ = Inheritance.call(self, "setImageColor", .{ Inheritance.cast(?*OpenGLFeature, gameFeature) });
                    if (colorLocked) {
                        if (Object.same(gameFeature, openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_4444)) {
                            _ = Inheritance.call(self, "setColor", .{ openGLFeatureFactory.?.OPENGL_COLOR_DEPTH_4444 });
                        } else if (Object.same(gameFeature, openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_565)) {
                            _ = Inheritance.call(self, "setColor", .{ openGLFeatureFactory.?.OPENGL_COLOR_DEPTH_565 });
                        } else if (Object.same(gameFeature, openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_8888)) {
                            _ = Inheritance.call(self, "setColor", .{ openGLFeatureFactory.?.OPENGL_COLOR_DEPTH_8888 });
                        }
                    }
                    modified = true;
                }
            }
        }
        if (Object.same(gameFeature, openGLFeatureFactory.?.OPENGL_COLOR_DEPTH_4444) or Object.same(gameFeature, openGLFeatureFactory.?.OPENGL_COLOR_DEPTH_565) or Object.same(gameFeature, openGLFeatureFactory.?.OPENGL_COLOR_DEPTH_8888)) {
            if (Inheritance.call(features.?, "isFeature", .{ gameFeature })) {
                if (!Object.same(self.getColor(), gameFeature)) {
                    _ = Inheritance.call(self, "setColor", .{ Inheritance.cast(?*OpenGLFeature, gameFeature) });
                    modified = true;
                }
            }
        }
        if (Object.same(gameFeature, openGLFeatureFactory.?.OPENGL_AUTO_SELECT) or Object.same(gameFeature, openGLFeatureFactory.?.OPENGL_MINIMUM)) {
            if (Inheritance.call(features.?, "isFeature", .{ gameFeature })) {
                _ = Inheritance.call(self, "setVersionSelector", .{ Inheritance.cast(?*OpenGLFeature, gameFeature) });
            }
            modified = true;
        }
        if (modified) {
            _ = self.write();
        }
    }
    

    pub fn setOpenGL(self: *Self, opengl: bool) void {
        self.opengl = opengl;
    }
    

    pub fn isOpenGL(self: *Self) bool {
        return self.opengl;
    }
    

    pub fn setImageColor(self: *Self, imageColor: ?*OpenGLFeature) void {
        self.imageColor = imageColor;
    }
    

    pub fn getImageColor(self: *Self) ?*OpenGLFeature {
        return self.imageColor;
    }
    

    pub fn setColor(self: *Self, color: ?*OpenGLFeature) void {
        self.color = color;
    }
    

    pub fn getColor(self: *Self) ?*OpenGLFeature {
        return self.color;
    }
    

    pub fn setVersionSelector(self: *Self, versionSelector: ?*OpenGLFeature) void {
        self.versionSelector = versionSelector;
    }
    

    pub fn getVersionSelector(self: *Self) ?*OpenGLFeature {
        return self.versionSelector;
    }
    

    pub fn setType(self: *Self, @"type": ?*OpenGLFeature) void {
        self.@"type" = @"type";
    }
    

    pub fn getType(self: *Self) ?*OpenGLFeature {
        return self.@"type";
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" isOpenGL: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isOpenGL() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" VersionSelector: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ self.getVersionSelector() }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Type: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ self.getType() }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Image Color: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ self.getImageColor() }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Color: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(stringUtil.?, "toString", .{ self.getColor() }) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

