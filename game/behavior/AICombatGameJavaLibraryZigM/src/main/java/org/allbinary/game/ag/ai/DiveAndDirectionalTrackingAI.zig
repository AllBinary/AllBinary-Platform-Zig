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
// package org.allbinary.game.ag.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const ArtificialIntelligenceInterface = @import("org/allbinary/ai/ArtificialIntelligenceInterface.zig").ArtificialIntelligenceInterface;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;
const DirectionalCompositeInterface = @import("org/allbinary/direction/DirectionalCompositeInterface.zig").DirectionalCompositeInterface;
const DirectionalInterface = @import("org/allbinary/direction/DirectionalInterface.zig").DirectionalInterface;
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const DestroyedEvent = @import("org/allbinary/game/combat/destroy/event/DestroyedEvent.zig").DestroyedEvent;
const DestroyedEventHandler = @import("org/allbinary/game/combat/destroy/event/DestroyedEventHandler.zig").DestroyedEventHandler;
const DestroyedEventListenerInterface = @import("org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface.zig").DestroyedEventListenerInterface;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const BasicVelocityProperties = @import("org/allbinary/game/physics/velocity/BasicVelocityProperties.zig").BasicVelocityProperties;
const VelocityInterfaceCompositeInterface = @import("org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.zig").VelocityInterfaceCompositeInterface;
const TrackingEvent = @import("org/allbinary/game/tracking/TrackingEvent.zig").TrackingEvent;
const TrackingEventHandler = @import("org/allbinary/game/tracking/TrackingEventHandler.zig").TrackingEventHandler;
const TrackingEventListenerInterface = @import("org/allbinary/game/tracking/TrackingEventListenerInterface.zig").TrackingEventListenerInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const GameTickTimeDelayHelper = @import("org/allbinary/time/GameTickTimeDelayHelper.zig").GameTickTimeDelayHelper;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const DiveAndDirectionalTrackingAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI";
    base: BasicAI = undefined,
    mathUtil: ?*MathUtil = null,
    directionFactory: ?*DirectionFactory = null,
    gameTickTimeDelayHelper: ?*GameTickTimeDelayHelper = null,
    timeDelayHelper: ?*TimeDelayHelper = null,
    list: ?*BasicArrayList = null,
    directionalInterface: ?*DirectionalInterface = null,
    velocityInterface: ?*BasicVelocityProperties = null,
    directionToKeyMap: []i32 = &.{},
    initialDropped: bool = false,
    diveP: bool = false,
    directionOfTarget: ?*Direction = null,
    MIN_DISTANCE: i32 = 0,
    lastTrackingLayerInterface: ?*AllBinaryLayer = null,
    artificialIntelligenceInterface: ?*ArtificialIntelligenceInterface = null,
    aiVistor: ?*Visitor = null,
    lastDirection: ?*Direction = null,
    // Implements TrackingEventListenerInterface
    // Implements DestroyedEventListenerInterface

    fn initFields(this: *Self) void {
        this.mathUtil = Inheritance.upcast(?*MathUtil, MathUtil.getInstance());
        this.directionFactory = Inheritance.upcast(?*DirectionFactory, DirectionFactory.getInstance());
        this.gameTickTimeDelayHelper = Inheritance.upcast(?*GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.getInstance());
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 500 });
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        
        
        this.directionToKeyMap = @constCast(&[_]i32{ Canvas.LEFT, Canvas.DOWN, Canvas.UP, Canvas.RIGHT })[0..];
        this.initialDropped = false;
        this.diveP = false;
        this.directionOfTarget = Inheritance.upcast(?*Direction, Inheritance.callStatic(Direction, "getInstance", .{ 0 }));
        this.MIN_DISTANCE = 40;
        this.lastTrackingLayerInterface = Inheritance.upcast(?*AllBinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER);
        
        
        this.lastDirection = Inheritance.upcast(?*Direction, DirectionFactory.getInstance().?.NO_DIRECTION);
    }
    

    pub fn create4(ownerLayerInterface: ?*AllBinaryLayer, artificialIntelligenceInterface: ?*ArtificialIntelligenceInterface, gameInput: ?*GameInput, visitor: ?*Visitor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        this.aiVistor = visitor;
        this.artificialIntelligenceInterface = artificialIntelligenceInterface;
        const directionalCompositeInterface: ?*DirectionalCompositeInterface = Inheritance.cast(?*DirectionalCompositeInterface, Inheritance.receiver(this, "getOwnerLayerInterface").getOwnerLayerInterface());
        this.directionalInterface = Inheritance.upcast(@TypeOf(this.directionalInterface), directionalCompositeInterface.?.getDirectionalInterface());
        const velocityInterfaceCompositeInterface: ?*VelocityInterfaceCompositeInterface = Inheritance.cast(?*VelocityInterfaceCompositeInterface, Inheritance.receiver(this, "getOwnerLayerInterface").getOwnerLayerInterface());
        this.velocityInterface = Inheritance.upcast(@TypeOf(this.velocityInterface), velocityInterfaceCompositeInterface.?.getVelocityProperties());
        _ = Inheritance.call(DestroyedEventHandler.getInstance().?, "addListenerInterface", .{ this });
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        if (self.isBeyondTarget()) {
            _ = self.init();
            _ = self.velocityInterface.?.zero();
        }
        if (!self.diveP) {
            _ = Inheritance.call(self, "target", .{ allBinaryLayerManager });
        } else {
            _ = self.dive();
            _ = self.attack();
        }
        _ = self.list.?.clear();
    }
    

    pub fn init(self: *Self) void {
        self.diveP = false;
        self.directionOfTarget = Inheritance.upcast(@TypeOf(self.directionOfTarget), DirectionFactory.getInstance().?.NOT_BORDERED_WITH);
        _ = Inheritance.call(TrackingEventHandler.getInstance().?, "addListenerInterface", .{ self });
    }
    

    // throws Exception
    pub fn target(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        if (self.list.?.size() == 0) {
            return;
        }
        const lastTrackingEvent: ?*TrackingEvent = Inheritance.cast(?*TrackingEvent, Inheritance.call(self.list.?, "removeAt", .{ 0 }));
        self.lastTrackingLayerInterface = Inheritance.upcast(@TypeOf(self.lastTrackingLayerInterface), Inheritance.receiver(lastTrackingEvent.?, "getLayerInterface").getLayerInterface());
        const layerInterface: ?*AllBinaryLayer = self.lastTrackingLayerInterface;
        const ownerLayerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        if (Object.same(Inheritance.receiver(layerInterface.?, "getGroupInterface").getGroupInterface(), Inheritance.receiver(ownerLayerInterface.?, "getGroupInterface").getGroupInterface())) {
            return;
        }
        const x: i32 = Inheritance.receiver(self.lastTrackingLayerInterface.?, "getXP").getXP();
        const y: i32 = Inheritance.receiver(self.lastTrackingLayerInterface.?, "getYP").getYP();
        const yDistance: i32 = Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP() - y - Inheritance.receiver(ownerLayerInterface.?, "getHeight").getHeight();
        const xDistance: i32 = Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP() - x - Inheritance.receiver(ownerLayerInterface.?, "getWidth").getWidth();
        const directionFactory: ?*DirectionFactory = Inheritance.upcast(?*DirectionFactory, DirectionFactory.getInstance());
        if (Inheritance.call(self.mathUtil.?, "abs", .{ yDistance }) > Inheritance.call(self.mathUtil.?, "abs", .{ xDistance })) {
            if (yDistance > self.MIN_DISTANCE) {
                self.directionOfTarget = Inheritance.upcast(@TypeOf(self.directionOfTarget), directionFactory.?.UP);
            } else if (yDistance < -self.MIN_DISTANCE) {
                self.directionOfTarget = Inheritance.upcast(@TypeOf(self.directionOfTarget), directionFactory.?.DOWN);
            }
        } else {
            if (xDistance > self.MIN_DISTANCE) {
                self.directionOfTarget = Inheritance.upcast(@TypeOf(self.directionOfTarget), directionFactory.?.LEFT);
            } else if (xDistance < -self.MIN_DISTANCE) {
                self.directionOfTarget = Inheritance.upcast(@TypeOf(self.directionOfTarget), directionFactory.?.RIGHT);
            }
        }
        if (!self.initialDropped and !Object.same(self.directionOfTarget, directionFactory.?.NOT_BORDERED_WITH)) {
            _ = self.drop();
        }
        if (self.initialDropped) {
            if (Object.same(self.directionOfTarget, directionFactory.?.UP) or Object.same(self.directionOfTarget, directionFactory.?.DOWN)) {
                _ = Inheritance.call(self, "verticalTargeting", .{ x });
            } else if (Object.same(self.directionOfTarget, directionFactory.?.LEFT) or Object.same(self.directionOfTarget, directionFactory.?.RIGHT)) {
                _ = Inheritance.call(self, "horizontalTargeting", .{ y });
            } else {
                _ = Inheritance.call(self.artificialIntelligenceInterface.?, "processAI", .{ allBinaryLayerManager });
            }
        }
    }
    

    // throws Exception
    pub fn verticalTargeting(self: *Self, x: i32) void {
        const ownerLayerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        if (Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP() < x) {
            _ = self.moveRight();
        }
        if (Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP() > x) {
            _ = self.moveLeft();
        }
        if (Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP() > x - 3 and Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP() < x + 3) {
            _ = self.setDive();
        }
    }
    

    // throws Exception
    pub fn horizontalTargeting(self: *Self, y: i32) void {
        const ownerLayerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        if (Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP() < y) {
            _ = self.moveDown();
        }
        if (Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP() > y) {
            _ = self.moveUp();
        }
        if (Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP() > y - 3 and Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP() < y + 3) {
            _ = self.setDive();
        }
    }
    

    pub fn setDive(self: *Self) void {
        self.diveP = true;
        _ = self.velocityInterface.?.zero();
        _ = Inheritance.call(TrackingEventHandler.getInstance().?, "removeListener", .{ self });
    }
    

    // throws Exception
    pub fn moveRight(self: *Self) void {
        _ = Inheritance.call(self, "setLastDirection", .{ self.directionFactory.?.RIGHT });
        _ = Inheritance.call(self.directionalInterface.?, "setFrameByDirection", .{ self.lastDirection });
        _ = Inheritance.call(self.aiVistor.?, "visit", .{ self });
    }
    

    // throws Exception
    pub fn moveLeft(self: *Self) void {
        _ = Inheritance.call(self, "setLastDirection", .{ self.directionFactory.?.LEFT });
        _ = Inheritance.call(self.directionalInterface.?, "setFrameByDirection", .{ self.lastDirection });
        _ = Inheritance.call(self.aiVistor.?, "visit", .{ self });
    }
    

    // throws Exception
    pub fn moveDown(self: *Self) void {
        _ = Inheritance.call(self, "setLastDirection", .{ self.directionFactory.?.DOWN });
        _ = Inheritance.call(self.directionalInterface.?, "setFrameByDirection", .{ self.lastDirection });
        _ = Inheritance.call(self.aiVistor.?, "visit", .{ self });
    }
    

    // throws Exception
    pub fn moveUp(self: *Self) void {
        _ = Inheritance.call(self, "setLastDirection", .{ self.directionFactory.?.UP });
        _ = Inheritance.call(self.directionalInterface.?, "setFrameByDirection", .{ self.lastDirection });
        _ = Inheritance.call(self.aiVistor.?, "visit", .{ self });
    }
    

    // throws Exception
    pub fn dive(self: *Self) void {
        _ = Inheritance.call(self.directionalInterface.?, "setFrameByDirection", .{ self.directionOfTarget });
        _ = Inheritance.call(self.aiVistor.?, "visit", .{ self });
    }
    

    // throws Exception
    pub fn attack(self: *Self) void {
        _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.KEY_NUM1 });
    }
    

    // throws Exception
    pub fn drop(self: *Self) void {
        if (Inheritance.call(self.timeDelayHelper.?, "isTime", .{ self.gameTickTimeDelayHelper.?.startTime })) {
            self.initialDropped = true;
            _ = Inheritance.call(self.aiVistor.?, "visit", .{ self });
        }
    }
    

    pub fn isBeyondTarget(self: *Self) bool {
        if (Object.same(self.directionOfTarget, self.directionFactory.?.DOWN)) {
            if (Inheritance.receiverOf(Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface().?, "getYP").getYP() > Inheritance.receiver(self.lastTrackingLayerInterface.?, "getYP").getYP() + self.MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else if (Object.same(self.directionOfTarget, self.directionFactory.?.UP)) {
            if (Inheritance.receiverOf(Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface().?, "getYP").getYP() < Inheritance.receiver(self.lastTrackingLayerInterface.?, "getYP").getYP() + self.MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else if (Object.same(self.directionOfTarget, self.directionFactory.?.RIGHT)) {
            if (Inheritance.receiverOf(Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface().?, "getXP").getXP() > Inheritance.receiver(self.lastTrackingLayerInterface.?, "getXP").getXP() + self.MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else if (Object.same(self.directionOfTarget, self.directionFactory.?.LEFT)) {
            if (Inheritance.receiverOf(Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface().?, "getXP").getXP() < Inheritance.receiver(self.lastTrackingLayerInterface.?, "getXP").getXP() + self.MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onMovement(self: *Self, trackingEvent: ?*TrackingEvent) void {
        _ = Inheritance.call(self.list.?, "add", .{ trackingEvent });
    }
    

    pub fn onDestroyed(self: *Self, destroyedEvent: ?*DestroyedEvent) void {
        if (Object.same(Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface(), Inheritance.receiver(destroyedEvent.?, "getLayerInterface").getLayerInterface())) {
            _ = Inheritance.call(TrackingEventHandler.getInstance().?, "removeListener", .{ self });
            _ = Inheritance.call(DestroyedEventHandler.getInstance().?, "removeListener", .{ self });
        }
    }
    

    pub fn setLastDirection(self: *Self, lastDirection: ?*Direction) void {
        self.lastDirection = lastDirection;
        const value: i32 = Inheritance.receiverOf(self.getLastDirection().?, "getValue").getValue();
        if (value < 4) {
            _ = Inheritance.call(&self.base, "setLastKey", .{ self.directionToKeyMap[@intCast(value)] });
        }
    }
    

    pub fn setLastKey(self: *Self, lastKey: i32) void {
        _ = Inheritance.call(&self.base, "setLastKey", .{ lastKey });
        if (Object.same(Inheritance.receiver(self, "getLastKey").getLastKey(), Canvas.LEFT)) {
            self.lastDirection = Inheritance.upcast(@TypeOf(self.lastDirection), DirectionFactory.getInstance().?.LEFT);
        } else if (Object.same(Inheritance.receiver(self, "getLastKey").getLastKey(), Canvas.DOWN)) {
            self.lastDirection = Inheritance.upcast(@TypeOf(self.lastDirection), DirectionFactory.getInstance().?.DOWN);
        } else if (Object.same(Inheritance.receiver(self, "getLastKey").getLastKey(), Canvas.UP)) {
            self.lastDirection = Inheritance.upcast(@TypeOf(self.lastDirection), DirectionFactory.getInstance().?.UP);
        } else if (Object.same(Inheritance.receiver(self, "getLastKey").getLastKey(), Canvas.RIGHT)) {
            self.lastDirection = Inheritance.upcast(@TypeOf(self.lastDirection), DirectionFactory.getInstance().?.RIGHT);
        }
    }
    

    pub fn getLastDirection(self: *Self) ?*Direction {
        return self.lastDirection;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.base.toString() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" LastDirection: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.getLastDirection() }) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

