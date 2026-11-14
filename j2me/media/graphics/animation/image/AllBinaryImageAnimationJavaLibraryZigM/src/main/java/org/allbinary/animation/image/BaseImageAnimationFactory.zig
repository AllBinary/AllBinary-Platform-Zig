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
// package org.allbinary.animation.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AnimationBehaviorFactory = @import("org/allbinary/animation/AnimationBehaviorFactory.zig").AnimationBehaviorFactory;
const AnimationInterfaceFactoryInterface = @import("org/allbinary/animation/AnimationInterfaceFactoryInterface.zig").AnimationInterfaceFactoryInterface;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const AnimationFactoryImageScaleUtil = @import("org/allbinary/image/AnimationFactoryImageScaleUtil.zig").AnimationFactoryImageScaleUtil;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ScaleProperties = @import("org/allbinary/media/ScaleProperties.zig").ScaleProperties;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const AnimationFactoryInitializationVisitor = @import("org/allbinary/animation/image/AnimationFactoryInitializationVisitor.zig").AnimationFactoryInitializationVisitor;
const Exception = @import("java/lang/Exception.zig").Exception;

pub const BaseImageAnimationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.BaseImageAnimationFactory";
    animationFactoryImageScaleUtil: ?*AnimationFactoryImageScaleUtil = null,
    image: ?*Image = null,
    animationBehaviorFactory: ?*AnimationBehaviorFactory = null,
    sequenceArray: []i32 = &.{},
    animationFactoryInitializationVisitor: ?*AnimationFactoryInitializationVisitor = null,
    scaleProperties: ?*ScaleProperties = null,
    // Implements AnimationInterfaceFactoryInterface

    fn initFields(this: *Self) void {
        this.animationFactoryImageScaleUtil = Inheritance.upcast(?*AnimationFactoryImageScaleUtil, AnimationFactoryImageScaleUtil.getInstance());
        
        
        
        
        this.scaleProperties = Inheritance.upcast(?*ScaleProperties, ScaleProperties.instance);
    }
    

    // throws Exception
    pub fn createFactoryBase(image: ?*Image, sequenceArray: []i32, width: i32, height: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) ?*BaseImageAnimationFactory {
        return Inheritance.callStatic(BaseImageAnimationFactory, "create7", .{ image, sequenceArray, width, height, 0, 0, animationBehaviorFactory });
    }
    

    pub fn create7(image: ?*Image, sequenceArray: []i32, width: i32, height: i32, dx: i32, dy: i32, animationBehaviorFactory: ?*AnimationBehaviorFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.animationFactoryInitializationVisitor = AnimationFactoryInitializationVisitor.create();
        this.image = image;
        Inheritance.fieldPointer(this.animationFactoryInitializationVisitor.?, "width").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this.animationFactoryInitializationVisitor.?, "width").*), width);
        Inheritance.fieldPointer(this.animationFactoryInitializationVisitor.?, "height").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this.animationFactoryInitializationVisitor.?, "height").*), height);
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.sequenceArray = sequenceArray;
        Inheritance.fieldPointer(this.animationFactoryInitializationVisitor.?, "dx").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this.animationFactoryInitializationVisitor.?, "dx").*), dx);
        Inheritance.fieldPointer(this.animationFactoryInitializationVisitor.?, "dy").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this.animationFactoryInitializationVisitor.?, "dy").*), dy);
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, instanceId: i32) ?*Animation {
        _ = self;
        return Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ instanceId }));
    }
    

    pub fn getImage(self: *Self) ?*Image {
        return self.image;
    }
    

    pub fn getSequenceArray(self: *Self) []i32 {
        return self.sequenceArray;
    }
    

    pub fn setInitialScale(self: *Self, scaleProperties: ?*ScaleProperties) void {
        self.scaleProperties = scaleProperties;
        if (Inheritance.fieldPointer(self.scaleProperties.?, "shouldScale").*) {
            Inheritance.fieldPointer(self.scaleProperties.?, "scaleWidth").* = Inheritance.number(i32, (Inheritance.arithmetic(.multiply, Inheritance.fieldPointer(self.animationFactoryInitializationVisitor.?, "width").*, Inheritance.fieldPointer(self.scaleProperties.?, "scaleX").*)));
            Inheritance.fieldPointer(self.scaleProperties.?, "scaleHeight").* = Inheritance.number(i32, (Inheritance.arithmetic(.multiply, Inheritance.fieldPointer(self.animationFactoryInitializationVisitor.?, "height").*, Inheritance.fieldPointer(self.scaleProperties.?, "scaleY").*)));
        } else {
        }
    }
    

    pub fn getAnimationFactoryInitializationVisitorP(self: *Self) ?*AnimationFactoryInitializationVisitor {
        return self.animationFactoryInitializationVisitor;
    }
    

    pub fn getScalePropertiesP(self: *Self) ?*ScaleProperties {
        return self.scaleProperties;
    }
    

    pub fn toString(self: *Self) ?*String {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.identityToString(self) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(commonLabels.?, "HEIGHT_LABEL").* });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ Inheritance.number(i32, self.image.?.getHeight()) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(commonSeps.?, "SPACE").* });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.animationFactoryInitializationVisitor)) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

