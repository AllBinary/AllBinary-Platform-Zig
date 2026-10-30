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
// package org.allbinary.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const LazyImageRotationAnimation = @import("org/allbinary/animation/image/LazyImageRotationAnimation.zig").LazyImageRotationAnimation;
const GameGlobalsFactory = @import("org/allbinary/canvas/GameGlobalsFactory.zig").GameGlobalsFactory;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const ABToGBUtil = @import("org/allbinary/game/canvas/ABToGBUtil.zig").ABToGBUtil;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const GDLazyResources = @import("org/allbinary/game/gd/resource/GDLazyResources.zig").GDLazyResources;
const GDResources = @import("org/allbinary/game/gd/resource/GDResources.zig").GDResources;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Memory = @import("org/allbinary/system/Memory.zig").Memory;
const BaseImageLoadingProcessor = @import("org/allbinary/thread/BaseImageLoadingProcessor.zig").BaseImageLoadingProcessor;
const ConcurrentImageLoadingProcessor = @import("org/allbinary/thread/ConcurrentImageLoadingProcessor.zig").ConcurrentImageLoadingProcessor;
const SynchObject = @import("org/allbinary/thread/SynchObject.zig").SynchObject;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ABSystemWrapper = @import("org/allbinary/logic/ABSystemWrapper.zig").ABSystemWrapper;
const ImageCacheBase = @import("org/allbinary/image/ImageCacheBase.zig").ImageCacheBase;
const ImageFactory = @import("org/allbinary/image/ImageFactory.zig").ImageFactory;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const ImageCache = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.ImageCache";
    base: ImageCacheBase = undefined,
    tsUtil: ?*TsUtil = null,
    concurrentImageLoadingProcessor: ?*BaseImageLoadingProcessor = null,
    commonStrings: ?*CommonStrings = null,
    commonSeps: ?*CommonSeps = null,
    resourceUtil: ?*ResourceUtil = null,
    gameGlobalsFactory: ?*GameGlobalsFactory = null,
    gdResources: ?*GDResources = null,
    loadNowList: ?*BasicArrayList = null,
    loadSoonList: ?*BasicArrayList = null,
    loadList: ?*BasicArrayList = null,
    loadAfterList: ?*BasicArrayList = null,
    lock: ?*SynchObject = null,
    firstTime: bool = false,
    totalLoaded: i32 = 0,
    progressEnded: bool = false,
    hasAnyLazyAnimationFactories: bool = false,
    processor: ?*Processor = null,
    endProcessor: ?*Processor = null,
    LOAD_IMAGE_FOR_ANIMATION: ?*String = null,
    pub var NULL_IMAGE_CACHE: ?*ImageCache = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_IMAGE_CACHE = ImageCache.create();
    }

    fn initFields(this: *Self) void {
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        this.concurrentImageLoadingProcessor = Inheritance.upcast(?*BaseImageLoadingProcessor, Inheritance.callStatic(ConcurrentImageLoadingProcessor, "create1", .{ this }));
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.resourceUtil = Inheritance.upcast(?*ResourceUtil, ResourceUtil.getInstance());
        this.gameGlobalsFactory = Inheritance.upcast(?*GameGlobalsFactory, GameGlobalsFactory.getInstance());
        this.gdResources = Inheritance.upcast(?*GDResources, GDResources.getInstance());
        this.loadNowList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.loadSoonList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.loadList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.loadAfterList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.lock = SynchObject.create();
        this.firstTime = true;
        this.totalLoaded = 0;
        this.progressEnded = false;
        this.hasAnyLazyAnimationFactories = false;
        this.processor = Inheritance.upcast(?*Processor, FirstProcessor.create());
        this.endProcessor = Inheritance.upcast(?*Processor, Processor.getInstance());
        this.LOAD_IMAGE_FOR_ANIMATION = String.literal("Load Image Animation");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ImageCacheBase.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn firstProcess(self: *Self) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        const isHTML: bool = J2MEUtil.isHTML();
        if (isHTML) {
            self.processor = Inheritance.upcast(@TypeOf(self.processor), Processor.getInstance());
            self.endProcessor = Inheritance.upcast(@TypeOf(self.endProcessor), HTMLEndProcessor.create());
        } else {
            self.processor = Inheritance.upcast(@TypeOf(self.processor), NotHTMLProcessor.create());
            self.endProcessor = Inheritance.upcast(@TypeOf(self.endProcessor), NotHTMLEndProcessor.create());
            { // try
                _ = self.runTask();
            }
            // catch (Exception e):
//                 _ = Inheritance.call(logUtil.?, "putF", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.END_METHOD_NAME });
        }
    }
    

    pub fn addListener(self: *Self, renderer: ?Object) void {
        _ = renderer;
        _ = self;
    }
    

    // throws Exception
    pub fn waitForLoadNow(self: *Self) void {
        if (self.firstTime) {
            const abToGBUtil: ?*ABToGBUtil = Inheritance.upcast(?*ABToGBUtil, ABToGBUtil.getInstance());
            const abCanvas: ?*AllBinaryGameCanvas = Inheritance.cast(?*AllBinaryGameCanvas, abToGBUtil.?.abCanvas);
            while (self.loadNowList.?.isEmpty() and (!Inheritance.receiver(abCanvas.?, "isInitialized").isInitialized() or (Inheritance.receiver(abCanvas.?, "isInitialized").isInitialized() and self.hasAnyLazyAnimationFactories)) and !self.progressEnded) {
                _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(120), .awake) catch {});
            }
            self.firstTime = false;
        }
    }
    

    // throws Exception
    pub fn loadImageForAnimation(self: *Self) void {
        var lazyImageRotationAnimation: ?*LazyImageRotationAnimation = null;
        {
            const monitor_N68772 = Object.monitor(self.lock).enter();
            defer monitor_N68772.exit();
            if (self.loadNowList.?.isEmpty()) {
                _ = self.endProcessor.?.process();
                if (self.loadSoonList.?.isEmpty()) {
                    if (self.loadAfterList.?.isEmpty()) {
                        if (self.firstTime) {
                        } else if (self.gameGlobalsFactory.?.newCanvas) {
                        } else {
                            _ = self.loadNextImage();
                        }
                        return;
                    } else {
                        lazyImageRotationAnimation = Inheritance.cast(?*LazyImageRotationAnimation, Inheritance.call(self.loadAfterList.?, "get", .{ 0 }));
                        if (Inheritance.call(self, "loadImageForLazyAnimation", .{ lazyImageRotationAnimation })) {
                            _ = Inheritance.call(self.loadAfterList.?, "remove", .{ lazyImageRotationAnimation });
                        }
                    }
                } else {
                    lazyImageRotationAnimation = Inheritance.cast(?*LazyImageRotationAnimation, Inheritance.call(self.loadSoonList.?, "get", .{ 0 }));
                    if (Inheritance.call(self, "loadImageForLazyAnimation", .{ lazyImageRotationAnimation })) {
                        _ = Inheritance.call(self.loadSoonList.?, "remove", .{ lazyImageRotationAnimation });
                    }
                }
                return;
            }
            lazyImageRotationAnimation = Inheritance.cast(?*LazyImageRotationAnimation, Inheritance.call(self.loadNowList.?, "get", .{ 0 }));
        }
        if (Inheritance.call(self, "loadImageForLazyAnimation", .{ lazyImageRotationAnimation })) {
            {
                const monitor_N69342 = Object.monitor(self.lock).enter();
                defer monitor_N69342.exit();
                _ = Inheritance.call(self.loadNowList.?, "remove", .{ lazyImageRotationAnimation });
            }
            if (lazyImageRotationAnimation.?.layoutIndex != 0) {
                const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getAssociated", .{ lazyImageRotationAnimation }));
                {
                    const monitor_N69491 = Object.monitor(self.lock).enter();
                    defer monitor_N69491.exit();
                    const size: i32 = list.?.size();
                    if (size > 0) {
                        _ = Inheritance.call(self.loadSoonList.?, "addAllList", .{ list });
                    }
                }
            }
            const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
            const isHTML: bool = J2MEUtil.isHTML();
            if (self.loadNowList.?.isEmpty() and (!isHTML or self.firstTime)) {
                _ = Inheritance.receiver(progressCanvas.?, "endFromInitialLazyLoadingComplete").endFromInitialLazyLoadingComplete();
            } else {
                if (@rem(self.totalLoaded, 10) == 0) {
                    _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 1, self.LOAD_IMAGE_FOR_ANIMATION });
                }
            }
        }
    }
    

    // throws Exception
    pub fn loadImages(self: *Self) void {
        while (!self.loadList.?.isEmpty() or !self.loadNowList.?.isEmpty()) {
            _ = self.loadImageForAnimations();
            _ = self.loadNextImage();
        }
    }
    

    // throws Exception
    pub fn loadImageForAnimations(self: *Self) void {
        while (!self.loadNowList.?.isEmpty()) {
            _ = self.loadImageForAnimation();
        }
    }
    

    // throws Exception
    pub fn loadRemainingAnimations(self: *Self) void {
        while (!self.loadAfterList.?.isEmpty() or !self.loadNowList.?.isEmpty()) {
            while (!self.loadNowList.?.isEmpty()) {
                _ = self.loadImageForAnimation();
            }
            var lazyImageRotationAnimation: ?*LazyImageRotationAnimation = null;
            {
                const monitor_N70268 = Object.monitor(self.lock).enter();
                defer monitor_N70268.exit();
                if (!self.loadAfterList.?.isEmpty()) {
                    lazyImageRotationAnimation = Inheritance.cast(?*LazyImageRotationAnimation, Inheritance.call(self.loadAfterList.?, "removeAt", .{ 0 }));
                }
            }
            if (lazyImageRotationAnimation != null) {
                _ = Inheritance.call(self, "loadImageForLazyAnimation", .{ lazyImageRotationAnimation });
            }
        }
    }
    

    // throws Exception
    pub fn loadImageForLazyAnimation(self: *Self, lazyImageRotationAnimation: ?*LazyImageRotationAnimation) bool {
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.receiverOf(lazyImageRotationAnimation.?.animationInterfaceFactoryInterface.?, "getImage").getImage());
        if (Inheritance.call(self, "loadImage", .{ image })) {
            _ = Inheritance.receiver(lazyImageRotationAnimation.?, "setRealAnimation").setRealAnimation();
            return true;
        }
        return false;
    }
    

    // throws Exception
    pub fn loadNextImage(self: *Self) void {
        var image: ?*Image = null;
        {
            const monitor_N70751 = Object.monitor(self.lock).enter();
            defer monitor_N70751.exit();
            if (self.loadList.?.size() == 0) {
                return;
            }
            image = Inheritance.cast(?*Image, Inheritance.call(self.loadList.?, "removeAt", .{ 0 }));
        }
        _ = Inheritance.call(self, "loadImage", .{ image });
    }
    

    // throws Exception
    pub fn loadImage(self: *Self, image: ?*Image) bool {
        if (image.?.isReady()) {
            return true;
        } else {
            if (image.?.getImage() != null) {
                if (image.?.setReady()) {
                    if (image.?.isReady()) {
                        self.totalLoaded += 1;
                        return true;
                    }
                }
            } else {
                const key: ?*String = Inheritance.upcast(?*String, image.?.getName());
                const image2: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self, "creatImage", .{ key }));
                if (image2.?.isReady()) {
                    _ = Inheritance.call(self, "init", .{ image, image2 });
                    return true;
                } else {
                    _ = Inheritance.call(image.?, "setImage", .{ image2.?.getImage() });
                }
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn init(self: *Self, image: ?*Image, image2: ?*Image) void {
        _ = self;
        _ = Inheritance.call(image.?, "init", .{ image2.?.getImage() });
    }
    

    // throws Exception
    pub fn creatImage(self: *Self, key: ?*String) ?*Image {
        const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(self.resourceUtil.?, "getResourceAsStream", .{ key }));
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(ImageFactory.getInstance().?, "createImageFromInputStream", .{ inputStream }));
        _ = Inheritance.call(image.?, "setName", .{ key });
        return image;
    }
    

    // throws Exception
    pub fn get(self: *Self, caller: ?*String, width: i32, height: i32) ?*Image {
        var foundIndex: i32 = Inheritance.call(self, "getIndexWH", .{ width, height });
        var image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self, "getFromAvailable", .{ foundIndex, width, height }));
        if (Object.same(image, NullImage.NULL_IMAGE)) {
            Inheritance.fieldPointer(self, "volume").* += width * height;
            if (Inheritance.fieldPointer(self, "volume").* > 32000) {
                _ = self.tsUtil.?.gc();
                Inheritance.fieldPointer(self, "volume").* = 0;
            }
            image = Inheritance.upcast(@TypeOf(image), Inheritance.call(self, "createImage", .{ caller, width, height }));
            if (Inheritance.fieldPointer(self, "nextIndex").* > @as(i32, @intCast(Inheritance.fieldPointer(self, "widths").*.len)) - 1) {
                if (foundIndex == -1) {
                    foundIndex = Inheritance.fieldPointer(self, "nextIndex").*;
                    Inheritance.fieldPointer(self, "widths").*[@intCast(Inheritance.fieldPointer(self, "nextIndex").*)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "widths").*[@intCast(Inheritance.fieldPointer(self, "nextIndex").*)]), width);
                    Inheritance.fieldPointer(self, "heights").*[@intCast(Inheritance.fieldPointer(self, "nextIndex").*)] = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "heights").*[@intCast(Inheritance.fieldPointer(self, "nextIndex").*)]), height);
                    Inheritance.fieldPointer(self, "nextIndex").* += 1;
                }
                _ = Inheritance.call(Inheritance.fieldPointer(self, "listOfList").*[@intCast(foundIndex)].?, "add", .{ image });
            }
        }
        return image;
    }
    

    // throws Exception
    pub fn getWithKey(self: *Self, key: ?Object) ?*Image {
        var image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self, "getImage", .{ key }));
        if (Object.same(image, NullImage.NULL_IMAGE)) {
            const inputStream: ?*InputStream = null;
            { // try
                image = Inheritance.upcast(@TypeOf(image), Inheritance.call(self, "createImageFromInputStream", .{ key, inputStream }));
            }
            // catch (Exception e):
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ String.literal("Exception: Trying Again After GC"), self, self.commonStrings.?.GET, e });
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("InputStream: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ inputStream }) }))), self, self.commonStrings.?.GET });
//                 _ = self.tsUtil.?.gc();
//                 _ = self.tsUtil.?.gc();
//                 _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Memory.getInfo(), self, self.commonStrings.?.GET });
//                 _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(100), .awake) catch {});
//                 image = Inheritance.upcast(@TypeOf(image), Inheritance.call(self, "createImageFromInputStream", .{ key, inputStream }));
            _ = Inheritance.call(Inheritance.fieldPointer(self, "hashtable").*.?, "put", .{ key, image });
        }
        return image;
    }
    

    pub fn getIndex(self: *Self, key: ?Object) i32 {
        const gdResources: ?*GDResources = Inheritance.upcast(?*GDResources, GDResources.getInstance());
        const resourceStringArray: []?*String = gdResources.?.resourceStringArray;
        const size: i32 = @as(i32, @intCast(resourceStringArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (Object.same(resourceStringArray[@intCast(index)], key)) {
                return index;
            }
            }
        }
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("unable to find key: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ key }) }))), self, self.commonStrings.?.RUN });
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn createImageFromInputStream(self: *Self, key: ?Object, inputStream: ?*InputStream) ?*Image {
        _ = inputStream;
        const gdLazyResources: ?*GDLazyResources = Inheritance.upcast(?*GDLazyResources, GDLazyResources.getInstance());
        const resourceStringArray: []?*String = gdLazyResources.?.requiredResourcesBeforeLoadingArray;
        const size: i32 = @as(i32, @intCast(resourceStringArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (Object.same(key, resourceStringArray[@intCast(index)])) {
                return Inheritance.upcast(?*Image, Inheritance.call(self, "creatImage", .{ Inheritance.cast(?*String, key) }));
            }
            }
        }
        _ = self.runTask();
        var index: i32 = Inheritance.call(self, "getIndex", .{ key });
        const width: i32 = gdLazyResources.?.imageResourceWidthArray[@intCast(index)];
        const height: i32 = gdLazyResources.?.imageResourceHeightArray[@intCast(index)];
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(self, "createImageLater", .{ Inheritance.cast(?*String, key), width, height }));
        {
            const monitor_N74327 = Object.monitor(self.lock).enter();
            defer monitor_N74327.exit();
            _ = Inheritance.call(self.loadList.?, "add", .{ image });
        }
        return image;
    }
    

    // throws Exception
    pub fn createImageLater(self: *Self, key: ?*String, width: i32, height: i32) ?*Image {
        _ = self;
        return Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImageLater", .{ key, width, height }));
    }
    

    pub fn getAssociated(self: *Self, lazyImageRotationAnimation: ?*LazyImageRotationAnimation) ?*BasicArrayList {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        {
            const monitor_N74703 = Object.monitor(self.lock).enter();
            defer monitor_N74703.exit();
            var lazyImageRotationAnimation2: ?*LazyImageRotationAnimation = null;
            const size: i32 = self.loadAfterList.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                lazyImageRotationAnimation2 = Inheritance.cast(?*LazyImageRotationAnimation, Inheritance.call(self.loadAfterList.?, "get", .{ index }));
                if (Object.same(lazyImageRotationAnimation2.?.instanceId, lazyImageRotationAnimation.?.instanceId)) {
                    _ = Inheritance.call(list.?, "add", .{ lazyImageRotationAnimation2 });
                }
                }
            }
            const size2: i32 = list.?.size();
            {
                var index: i32 = 0;
                while (index < size2) : (index += 1) {
                _ = Inheritance.call(self.loadAfterList.?, "remove", .{ Inheritance.call(list.?, "get", .{ index }) });
                }
            }
        }
        return list;
    }
    

    pub fn add(self: *Self, lazyImageRotationAnimation: ?*LazyImageRotationAnimation) void {
        {
            const monitor_N75258 = Object.monitor(self.lock).enter();
            defer monitor_N75258.exit();
            _ = Inheritance.call(self.loadAfterList.?, "add", .{ lazyImageRotationAnimation });
        }
    }
    

    // throws Exception
    pub fn insertFirst(self: *Self, lazyImageRotationAnimation: ?*LazyImageRotationAnimation) void {
        if (Inheritance.call(self.loadNowList.?, "contains", .{ lazyImageRotationAnimation })) {
        } else {
            {
                const monitor_N75408 = Object.monitor(self.lock).enter();
                defer monitor_N75408.exit();
                _ = Inheritance.call(self.loadNowList.?, "add", .{ lazyImageRotationAnimation });
                _ = Inheritance.call(self.loadAfterList.?, "remove", .{ lazyImageRotationAnimation });
            }
        }
        _ = self.runTask();
    }
    

    pub fn progressEnded(self: *Self) void {
        self.progressEnded = true;
    }
    

    // throws Exception
    pub fn runTask(self: *Self) void {
        _ = self.processor.?.process();
    }
    

    pub fn initProgress(self: *Self) void {
        if (self.firstTime) {
            self.firstTime = false;
        }
    }
    

    pub fn isLazy(self: *Self) bool {
        _ = self;
        return true;
    }
    pub const NotHTMLProcessor = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.image.NotHTMLProcessor";
        base: Processor = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Processor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
        

        pub fn process(self: *Self) void {
            _ = self.concurrentImageLoadingProcessor.?.runTask();
        }
    };
    pub const NotHTMLEndProcessor = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.image.NotHTMLEndProcessor";
        base: Processor = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Processor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
        

        pub fn process(self: *Self) void {
            _ = self;
            const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
            _ = Inheritance.receiver(progressCanvas.?, "endIfPaintedSinceStart").endIfPaintedSinceStart();
        }
    };
    pub const HTMLEndProcessor = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.image.HTMLEndProcessor";
        base: Processor = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Processor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
        

        pub fn process(self: *Self) void {
            const size: i32 = self.gdResources.?.currentLayoutRequiredTotal;
            if (size == 0) {
                const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
                _ = Inheritance.receiver(progressCanvas.?, "endIfPaintedSinceStart").endIfPaintedSinceStart();
            } else if (self.totalLoaded > @divTrunc(size, 12)) {
                const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
                _ = Inheritance.receiver(progressCanvas.?, "endIfPaintedSinceStart").endIfPaintedSinceStart();
                self.endProcessor = Inheritance.upcast(@TypeOf(self.endProcessor), NotHTMLEndProcessor.create());
            }
        }
    };
    pub const FirstProcessor = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.image.FirstProcessor";
        base: Processor = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Processor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
        

        pub fn process(self: *Self) void {
            _ = self.firstProcess();
        }
    };
};

