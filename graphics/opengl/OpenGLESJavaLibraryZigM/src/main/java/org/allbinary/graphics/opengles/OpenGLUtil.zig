// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const LoadTextures = @import("org/allbinary/device/LoadTextures.zig").LoadTextures;
const OpenGLESGraphics = @import("org/allbinary/device/OpenGLESGraphics.zig").OpenGLESGraphics;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const RendererStrings = @import("org/allbinary/graphics/opengles/renderer/RendererStrings.zig").RendererStrings;
const PreResourceImageUtil = @import("org/allbinary/image/PreResourceImageUtil.zig").PreResourceImageUtil;
const OpenGLESImage = @import("org/allbinary/image/opengles/OpenGLESImage.zig").OpenGLESImage;
const OpenGLImageCache = @import("org/allbinary/image/opengles/OpenGLImageCache.zig").OpenGLImageCache;
const OpenGLImageCacheFactory = @import("org/allbinary/image/opengles/OpenGLImageCacheFactory.zig").OpenGLImageCacheFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const SynchObject = @import("org/allbinary/thread/SynchObject.zig").SynchObject;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const OpenGLCapabilities = @import("org/allbinary/graphics/opengles/OpenGLCapabilities.zig").OpenGLCapabilities;
const OpenGLLogUtil = @import("org/allbinary/graphics/opengles/OpenGLLogUtil.zig").OpenGLLogUtil;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const OpenGLUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    renderStrings: ?*RendererStrings = null,
    canvasStrings: ?*CanvasStrings = null,
    displayInfoSingleton: ?*DisplayInfoSingleton = null,
    preResourceImageUtil: ?*PreResourceImageUtil = null,
    lockObject: ?*SynchObject = null,
    anyType: ?*SynchObject = null,
    list: ?*BasicArrayList = null,
    runnableList: ?*BasicArrayList = null,
    created: bool = false,
    surfaceCreatedAndInitialized: bool = false,
    var instance: ?*OpenGLUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.renderStrings = Inheritance.upcast(?*RendererStrings, RendererStrings.getInstance());
        this.canvasStrings = Inheritance.upcast(?*CanvasStrings, CanvasStrings.getInstance());
        this.displayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.preResourceImageUtil = Inheritance.upcast(?*PreResourceImageUtil, PreResourceImageUtil.getInstance());
        this.lockObject = SynchObject.create();
        this.anyType = SynchObject.create();
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.runnableList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.created = false;
        this.surfaceCreatedAndInitialized = false;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*OpenGLUtil {
        return Inheritance.upcast(?*OpenGLUtil, OpenGLUtil.instance);
    }
    

    pub fn onSurfaceCreated(self: *Self, gl: ?*GL10) void {
        _ = gl;
        { // try
            if (!self.created) {
                self.created = true;
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(CommonLabels.getInstance().?.START_LABEL, Object.toString(Object.of(OpenGLCapabilities.getInstance()))), self, self.renderStrings.?.ON_SURFACE_CREATED });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.renderStrings.?.ON_SURFACE_CREATED, e });
    }
    

    pub fn onSurfaceCreated2(self: *Self, gl: ?*GL10, loadTextures: ?*LoadTextures) void {
        _ = self;
        { // try
            _ = Inheritance.call(loadTextures.?, "load", .{ gl });
            _ = Inheritance.call(OpenGLLogUtil.getInstance().?, "logError", .{ gl });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.renderStrings.?.ON_SURFACE_CREATED, e });
    }
    

    // throws Exception
    pub fn onSurfaceChanged(self: *Self, gl: ?*GL10, graphics: ?*OpenGLESGraphics) void {
        if (!self.surfaceCreatedAndInitialized) {
            _ = Inheritance.receiver(graphics.?, "init").init();
            self.surfaceCreatedAndInitialized = true;
        }
        _ = Inheritance.receiver(graphics.?, "update").update();
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        _ = Inheritance.call(progressCanvas.?, "update", .{ graphics });
        _ = Inheritance.call((Inheritance.cast(?*OpenGLImageCache, OpenGLImageCacheFactory.getInstance())).?, "update", .{ gl });
        _ = self.processRunnables();
        _ = Inheritance.call(self, "set", .{ gl });
    }
    

    pub fn addImage(self: *Self, image: ?*Image) ?*Image {
        const encapsulateImage: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self.preResourceImageUtil.?, "encapsulate", .{ image }));
        if (!Object.same(encapsulateImage, image)) {
            {
                const monitor_N67866 = Object.monitor(self.anyType).enter();
                defer monitor_N67866.exit();
                _ = Inheritance.call(self.list.?, "add", .{ encapsulateImage });
            }
            return encapsulateImage;
        }
        return image;
    }
    

    pub fn clear(self: *Self) void {
        {
            const monitor_N68014 = Object.monitor(self.anyType).enter();
            defer monitor_N68014.exit();
            _ = self.list.?.clear();
        }
    }
    

    pub fn addRunnable(self: *Self, runnable: ?*Runnable) void {
        {
            const monitor_N68088 = Object.monitor(self.lockObject).enter();
            defer monitor_N68088.exit();
            if (!Inheritance.call(self.runnableList.?, "contains", .{ runnable })) {
                _ = Inheritance.call(self.runnableList.?, "add", .{ runnable });
                _ = Inheritance.call(self.displayInfoSingleton.?, "add", .{ self.canvasStrings.?.SCALED_IMAGES });
            }
        }
    }
    

    pub fn processRunnables(self: *Self) void {
        {
            const monitor_N68295 = Object.monitor(self.lockObject).enter();
            defer monitor_N68295.exit();
            var runnable: ?*Runnable = null;
            const size: i32 = self.runnableList.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                runnable = Inheritance.cast(?*Runnable, Inheritance.call(self.runnableList.?, "get", .{ index }));
                _ = runnable.?.run();
                }
            }
            _ = self.runnableList.?.clear();
        }
    }
    

    // throws Exception
    pub fn set(self: *Self, gl: ?*GL10) void {
        const size: i32 = self.list.?.size();
        var image: ?*OpenGLESImage = null;
        {
            var index2: i32 = 0;
            while (index2 < size) : (index2 += 1) {
            image = Inheritance.cast(?*OpenGLESImage, Inheritance.call(self.list.?, "get", .{ index2 }));
            _ = Inheritance.call(image.?, "set", .{ gl });
            }
        }
    }
};

