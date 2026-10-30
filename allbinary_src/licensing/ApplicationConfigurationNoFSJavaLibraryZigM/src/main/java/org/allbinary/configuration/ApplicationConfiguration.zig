// Generated Code Do Not Modify
// package org.allbinary.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Feature = @import("org/allbinary/game/configuration/feature/Feature.zig").Feature;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const MainFeatureFactory = @import("org/allbinary/game/configuration/feature/MainFeatureFactory.zig").MainFeatureFactory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const ApplicationConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.configuration.ApplicationConfiguration";
    logUtil: ?*LogUtil = null,
    fullscreen: bool = false,
    showTitleBar: bool = false,
    progressBarView: bool = false,
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
            _ = this.read();
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(this.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, this, commonStrings.?.CONSTRUCTOR, e });
        return this;
    }
    

    // throws Exception
    pub fn read(self: *Self) void {
        _ = Inheritance.call(self, "setFullscreen", .{ true });
        _ = Inheritance.call(self, "setProgressBarView", .{ false });
        _ = Inheritance.call(self, "setShowTitleBar", .{ false });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Read Configuration: "), Object.toString(Object.of(self))), self, String.literal("read") });
    }
    

    // throws Exception
    pub fn write(self: *Self) void {
        _ = self;
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

