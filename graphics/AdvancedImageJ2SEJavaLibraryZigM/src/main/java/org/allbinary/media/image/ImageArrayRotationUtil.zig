// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
// const IOException = @import("java/io/IOException.zig").IOException;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ImageJ2SERotationUtil = @import("org/allbinary/media/image/ImageJ2SERotationUtil.zig").ImageJ2SERotationUtil;
const ImageProcessedVisitor = @import("org/allbinary/media/image/ImageProcessedVisitor.zig").ImageProcessedVisitor;
const ImageProcessorInput = @import("org/allbinary/media/image/ImageProcessorInput.zig").ImageProcessorInput;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const ImageArrayRotationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageArrayRotationUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    TOTAL_ANGLE: ?*String = null,
    var instance: ?*ImageArrayRotationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageArrayRotationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.TOTAL_ANGLE = String.literal("totalAngle: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ImageArrayRotationUtil {
        return Inheritance.upcast(?*ImageArrayRotationUtil, ImageArrayRotationUtil.instance);
    }
    

    // throws IOException
    pub fn process(self: *Self, imageProcessorInput: ?*ImageProcessorInput, input: ?*String, visitor: ?*ImageProcessedVisitor) void {
        var totalAngle: ?*Integer = null;
        if (Object.same(input, self.commonStrings.?.UP)) {
            totalAngle = Inheritance.upcast(@TypeOf(totalAngle), Inheritance.callStatic(Integer, "valueOf", .{ -90 }));
        } else if (Object.same(input, self.commonStrings.?.DOWN)) {
            totalAngle = Inheritance.upcast(@TypeOf(totalAngle), Inheritance.callStatic(Integer, "valueOf", .{ 90 }));
        } else {
            totalAngle = Inheritance.upcast(@TypeOf(totalAngle), Inheritance.callStatic(Integer, "valueOf", .{ input }));
        }
        var generatedBufferedImage: ?*BufferedImage = null;
        const bufferedImageArray: []?*BufferedImage = imageProcessorInput.?.getBufferedImageArray();
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(bufferedImageArray.len))) : (index += 1) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.TOTAL_ANGLE, totalAngle), self, self.commonStrings.?.RUN });
            generatedBufferedImage = Inheritance.upcast(@TypeOf(generatedBufferedImage), Inheritance.call(ImageJ2SERotationUtil.getInstance().?, "getRotatedImage", .{ bufferedImageArray[@intCast(index)], totalAngle.?.intValue() }));
            _ = Inheritance.call(visitor.?, "visit", .{ generatedBufferedImage, input, index });
            }
        }
    }
};

