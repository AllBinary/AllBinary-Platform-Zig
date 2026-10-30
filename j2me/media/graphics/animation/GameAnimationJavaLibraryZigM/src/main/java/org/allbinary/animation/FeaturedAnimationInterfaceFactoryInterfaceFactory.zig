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
// package org.allbinary.animation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FeatureResourceAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface.zig").FeatureResourceAnimationInterfaceFactoryInterface;
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const FeaturedResourceFactory = @import("org/allbinary/game/resource/FeaturedResourceFactory.zig").FeaturedResourceFactory;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const RectangleFactory = @import("org/allbinary/graphics/RectangleFactory.zig").RectangleFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const BasicAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/BasicAnimationInterfaceFactoryInterface.zig").BasicAnimationInterfaceFactoryInterface;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const ProceduralAnimationInterfaceFactoryInterface = @import("org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.zig").ProceduralAnimationInterfaceFactoryInterface;

pub const FeaturedAnimationInterfaceFactoryInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory";
    base: FeaturedResourceFactory = undefined,
    var INSTANCE: ?*FeaturedAnimationInterfaceFactoryInterfaceFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        INSTANCE = FeaturedAnimationInterfaceFactoryInterfaceFactory.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = FeaturedResourceFactory.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*FeaturedAnimationInterfaceFactoryInterfaceFactory {
        return Inheritance.upcast(?*FeaturedAnimationInterfaceFactoryInterfaceFactory, FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE);
    }
    

    // throws Exception
    pub fn getRectangle(self: *Self, resource: ?*String) ?*Rectangle {
        return Inheritance.upcast(?*Rectangle, Inheritance.call(self, "getRectangleXY", .{ resource, 0, 0 }));
    }
    

    // throws Exception
    pub fn getRectangleXY(self: *Self, resource: ?*String, x: i32, y: i32) ?*Rectangle {
        const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getList").getList());
        const scale: i32 = Inheritance.receiverOf(Inheritance.receiverOf(GameConfigurationCentral.getInstance().?.SCALE.?, "getValue").getValue().?, "intValue").intValue();
        const size: i32 = Inheritance.receiverOf(Inheritance.receiver(self, "getList").getList().?, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const featureInterface: ?*FeatureResourceAnimationInterfaceFactoryInterface = Inheritance.cast(?*FeatureResourceAnimationInterfaceFactoryInterface, list.?.objectArray[@intCast(index)]);
            if (Inheritance.receiver(featureInterface.?, "isFeature").isFeature()) {
                const rectangle: ?*Rectangle = Inheritance.upcast(?*Rectangle, Inheritance.call(featureInterface.?, "getRectangle", .{ resource }));
                if (!Object.same(rectangle, RectangleFactory.SINGLETON)) {
                    return Inheritance.callStatic(Rectangle, "create3", .{ Inheritance.call(pointFactory.?, "createXY", .{ x, y }), ((rectangle.?.getWidth() * scale) >> @intCast(1)), ((rectangle.?.getHeight() * scale) >> @intCast(1)) });
                }
            }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("No rectangle available for current feature selection or Resource: ") }).?, "append", .{ resource }))); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn getProcedural(self: *Self, resource: ?*String) ?*ProceduralAnimationInterfaceFactoryInterface {
        return Inheritance.cast(?*ProceduralAnimationInterfaceFactoryInterface, Inheritance.call(self, "getBasicAnimationInterfaceFactoryInstance", .{ resource }));
    }
    

    // throws Exception
    pub fn get(self: *Self, resource: ?*String) ?*AnimationInterfaceFactoryInterface {
        return Inheritance.cast(?*AnimationInterfaceFactoryInterface, Inheritance.call(self, "getBasicAnimationInterfaceFactoryInstance", .{ resource }));
    }
    

    // throws Exception
    pub fn getBasicAnimationInterfaceFactoryInstance(self: *Self, resource: ?*String) ?*BasicAnimationInterfaceFactoryInterface {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getList").getList());
        const resourceTypeAvailableList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = Inheritance.receiverOf(Inheritance.receiver(self, "getList").getList().?, "size").size();
        var featureInterface: ?*FeatureResourceAnimationInterfaceFactoryInterface = null;
        var animationInterfaceFactoryInterface: ?*BasicAnimationInterfaceFactoryInterface = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            featureInterface = Inheritance.cast(?*FeatureResourceAnimationInterfaceFactoryInterface, list.?.objectArray[@intCast(index)]);
            if (Inheritance.receiver(featureInterface.?, "isFeature").isFeature()) {
                _ = Inheritance.call(resourceTypeAvailableList.?, "add", .{ featureInterface });
                animationInterfaceFactoryInterface = Inheritance.upcast(@TypeOf(animationInterfaceFactoryInterface), Inheritance.call(featureInterface.?, "getBasicAnimationInterfaceFactoryInstance", .{ resource }));
                if (!Object.same(animationInterfaceFactoryInterface, NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY)) {
                    return animationInterfaceFactoryInterface;
                }
            }
            }
        }
        if (resourceTypeAvailableList.?.size() > 0) {
            const NO_ANIMATION_AVAILABLE_FROM: ?*String = String.literal("No animation available from: ");
            const FOR_FACTORIES: ?*String = String.literal(" factories: ");
            const FOR_RESOURCE: ?*String = String.literal(" for Resource: ");
            const HAS_KEY: ?*String = String.literal(" has: ");
            const RESOURCES_LABEL: ?*String = String.literal(" resources ");
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ NO_ANIMATION_AVAILABLE_FROM });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ resourceTypeAvailableList.?.size() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.FORWARD_SLASH });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ size });
            _ = Inheritance.call(stringBuffer.?, "append", .{ FOR_FACTORIES });
            const size2: i32 = resourceTypeAvailableList.?.size();
            {
                var index: i32 = 0;
                while (index < size2) : (index += 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(Inheritance.call(resourceTypeAvailableList.?, "get", .{ index }))) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.COMMA_SEP });
                }
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ FOR_RESOURCE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ resource });
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
                featureInterface = Inheritance.cast(?*FeatureResourceAnimationInterfaceFactoryInterface, list.?.objectArray[@intCast(index)]);
                if (Inheritance.receiver(featureInterface.?, "isFeature").isFeature()) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ featureInterface }) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ HAS_KEY });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ Inheritance.receiverOf(Inheritance.receiver(featureInterface.?, "getHashtable").getHashtable().?, "size").size() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ RESOURCES_LABEL });
                }
                }
            }
            std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(stringBuffer)); break :exception error.Exception; }});
        } else {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                featureInterface = Inheritance.cast(?*FeatureResourceAnimationInterfaceFactoryInterface, list.?.objectArray[@intCast(index)]);
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(featureInterface)) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
                }
            }
            const result: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ String.literal("No feature resource type available for Resource: ") }).?, "append", .{ resource }).?, "append", .{ String.literal(" Resource Factories Available: ") }).?, "append", .{ result }))); break :exception error.Exception; }});
        }
    }
};

