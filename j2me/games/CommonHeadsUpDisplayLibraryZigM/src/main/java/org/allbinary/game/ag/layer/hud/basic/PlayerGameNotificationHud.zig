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
// package org.allbinary.game.ag.layer.hud.basic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const GameAdStateFactory = @import("org/allbinary/business/advertisement/GameAdStateFactory.zig").GameAdStateFactory;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const GameAdState = @import("org/allbinary/game/GameAdState.zig").GameAdState;
const GameNotification = @import("org/allbinary/game/ag/layer/hud/basic/notification/GameNotification.zig").GameNotification;
const GameNotificationHud = @import("org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.zig").GameNotificationHud;
const GameNotificationEventHandler = @import("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.zig").GameNotificationEventHandler;
const CustomGPoint = @import("org/allbinary/graphics/CustomGPoint.zig").CustomGPoint;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GameTickTimeDelayHelper = @import("org/allbinary/time/GameTickTimeDelayHelper.zig").GameTickTimeDelayHelper;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const PlayerGameNotificationHud = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud";
    base: GameNotificationHud = undefined,
    gameTickTimeDelayHelper: ?*GameTickTimeDelayHelper = null,
    EMPTY_STRING: ?*String = null,
    displayInfo: ?*DisplayInfoSingleton = null,
    timeDelayHelper: ?*TimeDelayHelper = null,
    circularIndexUtil: ?*CircularIndexUtil = null,
    gameNotification: ?*GameNotification = null,
    permanentGameNotification: ?*GameNotification = null,
    setAndRemoveProcessor: ?*Processor = null,
    nextUnremoveableProcessor: ?*Processor = null,
    processor: ?*Processor = null,
    PERMANENT_GAME_NOTIFICATION: ?*String = null,
    lastString: ?*String = null,
    string: ?*String = null,
    point: ?*CustomGPoint = null,
    width: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.gameTickTimeDelayHelper = Inheritance.upcast(?*GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.getInstance());
        this.EMPTY_STRING = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.displayInfo = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 });
        
        this.gameNotification = GameNotification.create();
        this.permanentGameNotification = GameNotification.create();
        this.setAndRemoveProcessor = Inheritance.upcast(?*Processor, Inheritance.callStatic(SetAndRemoveProcessor, "create1", .{ this }));
        this.nextUnremoveableProcessor = Inheritance.upcast(?*Processor, Inheritance.callStatic(NextUnremoveableProcessor, "create1", .{ this }));
        this.processor = Inheritance.upcast(?*Processor, Processor.getInstance());
        this.PERMANENT_GAME_NOTIFICATION = String.literal("Permanent Game Notification: ");
        this.lastString = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.string = this.EMPTY_STRING;
        this.point = Inheritance.upcast(?*CustomGPoint, CustomGPoint.NULL_CUSTOM_POINT);
        this.width = 0;
    }
    

    pub fn create4(location: i32, direction: i32, bufferZone: i32, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GameNotificationHud, "create4", .{ location, direction, bufferZone, basicColor }).*;
        this.initFields();
        this.circularIndexUtil = Inheritance.upcast(@TypeOf(this.circularIndexUtil), Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ 0 }));
        const gameNotificationEventHandler: ?*GameNotificationEventHandler = Inheritance.upcast(?*GameNotificationEventHandler, GameNotificationEventHandler.getInstance());
        _ = Inheritance.receiver(gameNotificationEventHandler.?, "removeAllListeners").removeAllListeners();
        _ = Inheritance.call(gameNotificationEventHandler.?, "addListenerInterface", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        { // try
            _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
            const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
            self.width = Inheritance.call(font.?, "stringWidth", .{ self.string });
            _ = self.processor.?.process();
            self.processor = Inheritance.upcast(@TypeOf(self.processor), Processor.getInstance());
        }
        // catch (Exception e):
//             const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.UPDATE, e });
    }
    

    pub fn getPoint(self: *Self, x: i32, y: i32) ?*GPoint {
        self.point = Inheritance.upcast(@TypeOf(self.point), Inheritance.callStatic(CustomGPoint, "getInstance3", .{ 0, 0 }));
        _ = Inheritance.call(self.point.?, "setX", .{ x });
        _ = Inheritance.call(self.point.?, "setY", .{ y });
        return Inheritance.upcast(?*GPoint, self.point);
    }
    

    pub fn add(self: *Self, string: ?*String, seconds: ?*Integer, basicColor: ?*BasicColor, permanent: ?*Boolean) void {
        if (permanent.?.booleanValue()) {
            if (!Object.same(self.lastString, string)) {
                self.lastString = string;
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.PERMANENT_GAME_NOTIFICATION }).?, "append", .{ string }))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.ADD });
            }
            _ = Inheritance.call(self.permanentGameNotification.?, "add", .{ string, seconds, basicColor });
            _ = Inheritance.call(self.circularIndexUtil.?, "setSize", .{ self.permanentGameNotification.?.getSize() });
        } else {
            _ = Inheritance.call(self.gameNotification.?, "add", .{ string, seconds, basicColor });
        }
    }
    

    // throws Exception
    pub fn processTick(self: *Self) void {
        if (Inheritance.call(self.timeDelayHelper.?, "isTime", .{ self.gameTickTimeDelayHelper.?.startTime })) {
            const gameAdState: ?*GameAdState = Inheritance.upcast(?*GameAdState, Inheritance.receiverOf(GameAdStateFactory.getInstance().?, "getCurrentInstance").getCurrentInstance());
            if (Inheritance.call(gameAdState.?, "isShowingAtLocation", .{ Inheritance.receiver(self, "getLocation").getLocation() })) {
                Inheritance.fieldPointer(self, "offsetY").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "offsetY").*), -54);
            } else {
                Inheritance.fieldPointer(self, "offsetY").* = 0;
            }
            if (self.gameNotification.?.getSize() > 0) {
                _ = self.setAndRemove();
            } else if (self.permanentGameNotification.?.getSize() > 0) {
                _ = self.setNextUnremoveable();
            } else {
                self.string = self.EMPTY_STRING;
            }
        }
    }
    

    // throws Exception
    pub fn setAndRemove(self: *Self) void {
        self.string = Inheritance.cast(?*String, Inheritance.call(self.gameNotification.?.stringList.?, "removeAt", .{ 0 }));
        self.processor = self.setAndRemoveProcessor;
    }
    

    // throws Exception
    pub fn setAndRemoveProcess(self: *Self) void {
        _ = Inheritance.call(self, "setX", .{ (self.displayInfo.?.getLastWidth() - self.width) >> @intCast(1) });
        _ = Inheritance.call(self.point.?, "setX", .{ Inheritance.receiver(self, "getX").getX() });
        _ = Inheritance.call(self.point.?, "setY", .{ Inheritance.receiver(self, "getY").getY() });
        const time: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(self.gameNotification.?.timeList.?, "removeAt", .{ 0 }));
        var iTime: i32 = time.?.intValue() * 1000;
        if (iTime == 0) {
            iTime = 500;
        }
        self.timeDelayHelper.?.delay = Inheritance.upcast(@TypeOf(self.timeDelayHelper.?.delay), iTime);
        _ = Inheritance.call(self, "setBasicColorP", .{ Inheritance.cast(?*BasicColor, Inheritance.call(self.gameNotification.?.colorList.?, "removeAt", .{ 0 })) });
    }
    

    // throws Exception
    pub fn setNextUnremoveable(self: *Self) void {
        const index: i32 = self.circularIndexUtil.?.getIndex();
        self.string = Inheritance.cast(?*String, self.permanentGameNotification.?.stringList.?.objectArray[@intCast(index)]);
        self.processor = self.nextUnremoveableProcessor;
    }
    

    // throws Exception
    pub fn setNextUnremoveableProcess(self: *Self) void {
        const index: i32 = self.circularIndexUtil.?.getIndex();
        _ = Inheritance.call(self, "setX", .{ (self.displayInfo.?.getLastWidth() - self.width) >> @intCast(1) });
        _ = Inheritance.call(self.point.?, "setX", .{ Inheritance.receiver(self, "getX").getX() });
        _ = Inheritance.call(self.point.?, "setY", .{ Inheritance.receiver(self, "getY").getY() });
        const time: ?*Integer = Inheritance.cast(?*Integer, self.permanentGameNotification.?.timeList.?.objectArray[@intCast(index)]);
        self.timeDelayHelper.?.delay = Inheritance.upcast(@TypeOf(self.timeDelayHelper.?.delay), time.?.intValue() * 1000);
        _ = Inheritance.call(self, "setBasicColorP", .{ Inheritance.cast(?*BasicColor, self.permanentGameNotification.?.colorList.?.objectArray[@intCast(index)]) });
        _ = self.circularIndexUtil.?.next();
    }
    

    pub fn clear(self: *Self) void {
        _ = self.gameNotification.?.clear();
        _ = self.permanentGameNotification.?.clear();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "myFontProcessor").*.?, "process", .{ graphics });
        _ = Inheritance.call(&self.base, "paintString", .{ graphics, self.string });
    }
    pub const SetAndRemoveProcessor = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.game.ag.layer.hud.basic.SetAndRemoveProcessor";
        base: Processor = undefined,
        updateMeasurementProcessor: ?*PlayerGameNotificationHud = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(updateMeasurementProcessor: ?*PlayerGameNotificationHud) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = Processor.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "updateMeasurementProcessor").* = updateMeasurementProcessor;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn process(self: *Self) void {
            _ = Inheritance.receiver(Inheritance.fieldPointer(self, "updateMeasurementProcessor").*.?, "setAndRemoveProcess").setAndRemoveProcess();
        }
    };
    pub const NextUnremoveableProcessor = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor";
        base: Processor = undefined,
        updateMeasurementProcessor: ?*PlayerGameNotificationHud = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(updateMeasurementProcessor: ?*PlayerGameNotificationHud) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = Processor.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "updateMeasurementProcessor").* = updateMeasurementProcessor;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn process(self: *Self) void {
            _ = Inheritance.receiver(Inheritance.fieldPointer(self, "updateMeasurementProcessor").*.?, "setNextUnremoveableProcess").setNextUnremoveableProcess();
        }
    };
};

