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
// package org.allbinary.input.automation.module.generic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const GenericProfile = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfile.zig").GenericProfile;
const GenericProfileDataWorkerType = @import("org/allbinary/input/automation/module/generic/configuration/profile/GenericProfileDataWorkerType.zig").GenericProfileDataWorkerType;
const SavedCaptureGenericProfileDataWorkerType = @import("org/allbinary/input/automation/module/generic/configuration/profile/SavedCaptureGenericProfileDataWorkerType.zig").SavedCaptureGenericProfileDataWorkerType;
const CaptureWorkerInterface = @import("org/allbinary/input/media/image/capture/CaptureWorkerInterface.zig").CaptureWorkerInterface;
const ScreenCaptureImagesWorker = @import("org/allbinary/input/media/image/capture/ScreenCaptureImagesWorker.zig").ScreenCaptureImagesWorker;
const SavedCaptureImagesWorker = @import("org/allbinary/input/automation/module/generic/SavedCaptureImagesWorker.zig").SavedCaptureImagesWorker;

pub const GenericProfileCaptureWorkerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.generic.GenericProfileCaptureWorkerFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(genericProfile: ?*GenericProfile) ?*CaptureWorkerInterface {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, genericProfile.?.getGenericProfileDataWorkerTypeVector());
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const genericProfileDataWorkerType: ?*GenericProfileDataWorkerType = Inheritance.cast(?*GenericProfileDataWorkerType, Inheritance.call(vector.?, "get", .{ index }));
            if (Object.same(genericProfileDataWorkerType, GenericProfileDataWorkerType.SCREEN_CAPTURE)) {
                return Inheritance.upcast(?*CaptureWorkerInterface, ScreenCaptureImagesWorker.create());
            } else if (Object.same(genericProfileDataWorkerType, GenericProfileDataWorkerType.SAVED_CAPTURE)) {
                return Inheritance.upcast(?*CaptureWorkerInterface, Inheritance.callStatic(SavedCaptureImagesWorker, "create1", .{ Inheritance.cast(?*SavedCaptureGenericProfileDataWorkerType, genericProfileDataWorkerType) }));
            }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = String.literal("No CaptureWorkerInterface specified in GenericProfile"); break :exception error.Exception; }});
    }
};

