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
// package org.allbinary.business.advertisement.thumbnail

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TwoDimensionalConstraintInterface = @import("org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface.zig").TwoDimensionalConstraintInterface;
const AdvertisementThumbnailInterface = @import("org/allbinary/business/advertisement/thumbnail/AdvertisementThumbnailInterface.zig").AdvertisementThumbnailInterface;

pub const AdvertisementThumbnail = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail";
    pub const java_interfaces = .{ AdvertisementThumbnailInterface };
    imageFileName: ?*String = null,
    imageUrl: ?*String = null,
    constraint: ?*TwoDimensionalConstraintInterface = null,
    // Implements AdvertisementThumbnailInterface

    fn initFields(this: *Self) void {
        this.imageFileName = null;
        this.imageUrl = null;
        this.constraint = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getFileName(self: *Self) ?*String {
        return self.imageFileName;
    }
    

    pub fn getUrl(self: *Self) ?*String {
        return self.imageUrl;
    }
    

    pub fn getTwoDimensionalConstraint(self: *Self) ?*TwoDimensionalConstraintInterface {
        return self.constraint;
    }
};

