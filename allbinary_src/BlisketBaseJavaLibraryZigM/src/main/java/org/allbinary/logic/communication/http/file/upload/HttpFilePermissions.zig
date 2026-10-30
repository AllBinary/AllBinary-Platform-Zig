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
// package org.allbinary.logic.communication.http.file.upload

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicUserRoleFactory = @import("org/allbinary/business/user/role/BasicUserRoleFactory.zig").BasicUserRoleFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const FileUploadData = @import("org/allbinary/logic/communication/http/file/upload/FileUploadData.zig").FileUploadData;

pub const HttpFilePermissions = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.file.upload.HttpFilePermissions";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    file: ?*AbFile = null,
    userRoles: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.userRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create1(fullPath: ?*AbPath) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.file = Inheritance.upcast(@TypeOf(this.file), Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ Inheritance.callStatic(AbPath, "create2", .{ fullPath.?.toFileSystemString(), FileUploadData.getInstance().?.FILE }) }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Loading Privileges: "), fullPath.?.toFileSystemString()), this, this.commonStrings.?.CONSTRUCTOR });
        }
        if (this.isFile()) {
            _ = Inheritance.call(this.userRoles.?, "add", .{ BasicUserRoleFactory.getInstance().?.ADMINISTRATOR });
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("User Roles: "), this.userRoles), this, this.commonStrings.?.CONSTRUCTOR });
        }
        return this;
    }
    

    pub fn isFile(self: *Self) bool {
        return self.file.?.isFile();
    }
    

    pub fn getUserRoles(self: *Self) ?*BasicArrayList {
        return self.userRoles;
    }
};

