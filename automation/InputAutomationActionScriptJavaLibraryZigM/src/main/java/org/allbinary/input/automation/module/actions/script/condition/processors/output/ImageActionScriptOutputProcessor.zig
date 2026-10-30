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
// package org.allbinary.input.automation.module.actions.script.condition.processors.output

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const InputImageIOInterfaceFactory = @import("org/allbinary/input/media/image/InputImageIOInterfaceFactory.zig").InputImageIOInterfaceFactory;
const InputImageType = @import("org/allbinary/input/media/image/InputImageType.zig").InputImageType;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ImageIOInterface = @import("org/allbinary/media/image/io/ImageIOInterface.zig").ImageIOInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ImageActionScriptOutputInterface = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputInterface.zig").ImageActionScriptOutputInterface;
const ImageTypes = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageTypes.zig").ImageTypes;
const Long = @import("java/lang/Long.zig").Long;

pub const ImageActionScriptOutputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor";
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn process(imageActionScriptOutputInterface: ?*ImageActionScriptOutputInterface, frame: ?*Long) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(logUtil.?, "putF", .{ String.plus(String.literal("Start - Processing at: "), Object.toString(Object.of(imageActionScriptOutputInterface))), String.literal("ImageActionScriptOutputProcessor"), commonStrings.?.PROCESS });
        const imageTypes: ?*ImageTypes = Inheritance.upcast(?*ImageTypes, Inheritance.receiver(imageActionScriptOutputInterface.?, "getImageTypes").getImageTypes());
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, imageTypes.?.getVector());
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const imageType: ?*InputImageType = Inheritance.cast(?*InputImageType, Inheritance.call(vector.?, "get", .{ index }));
            const imageIOInterface: ?*ImageIOInterface = Inheritance.upcast(?*ImageIOInterface, Inheritance.callStatic(InputImageIOInterfaceFactory, "getInstance", .{ imageType }));
            _ = Inheritance.call(imageIOInterface.?, "save", .{ frame });
            }
        }
    }
};

