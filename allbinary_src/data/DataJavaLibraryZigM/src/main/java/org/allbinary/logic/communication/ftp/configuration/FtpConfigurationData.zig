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
// package org.allbinary.logic.communication.ftp.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const FtpConfigurationData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.ftp.configuration.FtpConfigurationData";
    pub const NAME: ?*String = String.literal("FTP_NAME");
    pub const SERVER: ?*String = String.literal("FTP_SERVER");
    pub const PATH: ?*String = String.literal("FTP_PATH");
    pub const USERNAME: ?*String = String.literal("FTP_USERNAME");
    pub const PASSWORD: ?*String = String.literal("FTP_PASSWORD");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

