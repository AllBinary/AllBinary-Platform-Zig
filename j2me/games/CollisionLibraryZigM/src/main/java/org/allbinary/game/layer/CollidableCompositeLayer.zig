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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ArtificialIntelligence = @import("org/allbinary/ai/ArtificialIntelligence.zig").ArtificialIntelligence;
const ArtificialIntelligenceInterface = @import("org/allbinary/ai/ArtificialIntelligenceInterface.zig").ArtificialIntelligenceInterface;
const CollidableBaseBehavior = @import("org/allbinary/game/collision/CollidableBaseBehavior.zig").CollidableBaseBehavior;
const CollidableBaseBehaviorFactory = @import("org/allbinary/game/collision/CollidableBaseBehaviorFactory.zig").CollidableBaseBehaviorFactory;
const CollidableInterfaceCompositeInterface = @import("org/allbinary/game/collision/CollidableInterfaceCompositeInterface.zig").CollidableInterfaceCompositeInterface;
const CollidableNeverCollideBehaviorFactory = @import("org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory.zig").CollidableNeverCollideBehaviorFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const RectangleFactory = @import("org/allbinary/graphics/RectangleFactory.zig").RectangleFactory;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const AllBinaryGameLayer = @import("org/allbinary/game/layer/AllBinaryGameLayer.zig").AllBinaryGameLayer;

pub const CollidableCompositeLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.CollidableCompositeLayer";
    base: AllBinaryGameLayer = undefined,
    collidableInferface: ?*CollidableBaseBehavior = null,
    // Implements CollidableInterfaceCompositeInterface
    var NULL_COLLIDABLE_COMPOSITE_LAYER: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_COLLIDABLE_COMPOSITE_LAYER = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.collidableInferface = Inheritance.upcast(?*CollidableBaseBehavior, Inheritance.receiverOf(CollidableNeverCollideBehaviorFactory.getInstance().?, "createBehavior").createBehavior());
    }
    

    pub fn getNullInstance() ?*CollidableCompositeLayer {
        if (Object.same(CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER, NullUtil.getInstance().?.NULL_OBJECT)) {
            CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER = Inheritance.upcast(@TypeOf(CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER), Inheritance.callStatic(CollidableCompositeLayer, "create4", .{ StringUtil.getInstance().?.EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory.getInstance() }));
        }
        return Inheritance.cast(?*CollidableCompositeLayer, CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER);
    }
    

    pub fn create4(name: ?*String, layerInfo: ?*Rectangle, viewPosition: ?*ViewPositionBase, collidableBaseBehaviorFactory: ?*CollidableBaseBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryGameLayer, "create3", .{ name, layerInfo, viewPosition }).*;
        this.initFields();
        if (!Object.same(collidableBaseBehaviorFactory, CollidableNeverCollideBehaviorFactory.getInstance())) {
            _ = Inheritance.call(this, "setCollidableInferface", .{ collidableBaseBehaviorFactory.?.createBehavior() });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getArtificialIntelligenceInterface(self: *Self) ?*ArtificialIntelligenceInterface {
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED, self });
        return Inheritance.upcast(?*ArtificialIntelligenceInterface, ArtificialIntelligence.getInstance());
    }
    

    pub fn getCollidableInferface(self: *Self) ?*CollidableBaseBehavior {
        return self.collidableInferface;
    }
    

    pub fn setCollidableInferface(self: *Self, collidableInferface: ?*CollidableBaseBehavior) void {
        self.collidableInferface = collidableInferface;
    }
    

    pub fn implmentsCollidableInterface(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn toStringAppend(self: *Self, stringBuffer: ?*StringMaker) void {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        _ = Inheritance.call(&self.base, "toStringAppend", .{ stringBuffer });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getCollidableInferface())) });
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(self, "toStringAppend", .{ stringBuffer });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

