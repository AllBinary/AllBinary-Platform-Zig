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
// package org.allbinary.business.user.commerce.inventory.item.download

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const DownloadItemData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData";
    pub const NAME: ?*String = String.literal("DOWNLOADITEM_NAME");
    pub const ID: ?*String = String.literal("DOWNLOADITEM_ID");
    pub const SYSTEM: ?*String = String.literal("DOWNLOADITEM_SYSTEM");
    pub const PLATFORM: ?*String = String.literal("DOWNLOADITEM_PLATFORM");
    pub const SPECIAL_NAME: ?*String = String.literal("DOWNLOADITEM_SPECIAL_NAME");
    pub const VERSION: ?*String = String.literal("DOWNLOADITEM_VERSION");
    pub const CHANGES: ?*String = String.literal("DOWNLOADITEM_CHANGES");
    pub const LICENSE_FILE: ?*String = String.literal("DOWNLOADITEM_LICENSE_FILE");
    pub const FILE: ?*String = String.literal("DOWNLOADITEM_FILE");
    pub const EXTRA_FILES: ?*String = String.literal("DOWNLOADITEM_EXTRA_FILES");
    pub const SIZE: ?*String = String.literal("DOWNLOADITEM_SIZE");
    pub const VALID_TIME: ?*String = String.literal("DOWNLOADITEM_VALID_TIME");
    pub const VALID_TIME_YEARS: ?*String = String.literal("DOWNLOADITEM_VALID_TIME_YEAR");
    pub const VALID_TIME_MONTHS: ?*String = String.literal("DOWNLOADITEM_VALID_TIME_MONTH");
    pub const VALID_TIME_DAYS: ?*String = String.literal("DOWNLOADITEM_VALID_TIME_DAY");
    pub const VALID_TIME_HOURS: ?*String = String.literal("DOWNLOADITEM_VALID_TIME_HOUR");
    pub const VALID_TIME_MINUTES: ?*String = String.literal("DOWNLOADITEM_VALID_TIME_MINUTES");
    pub const VALID_TIME_SECONDS: ?*String = String.literal("DOWNLOADITEM_VALID_TIME_SECONDS");
    pub const RETRIES: ?*String = String.literal("DOWNLOADITEM_RETRIES");

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

