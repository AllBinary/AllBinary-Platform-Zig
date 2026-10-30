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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicUserRole = @import("org/allbinary/business/user/role/BasicUserRole.zig").BasicUserRole;
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const HttpFilePermissions = @import("org/allbinary/logic/communication/http/file/upload/HttpFilePermissions.zig").HttpFilePermissions;
const HttpRequestUtil = @import("org/allbinary/logic/communication/http/request/HttpRequestUtil.zig").HttpRequestUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const AuthenticationHelper = @import("admin/taghelpers/AuthenticationHelper.zig").AuthenticationHelper;

pub const AuthenticationHelperUtil = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.AuthenticationHelperUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*AuthenticationHelperUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AuthenticationHelperUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AuthenticationHelperUtil {
        return Inheritance.upcast(?*AuthenticationHelperUtil, AuthenticationHelperUtil.instance);
    }
    

    // throws Exception
    pub fn isAuthorized(self: *Self, authenticationHelper: ?*AuthenticationHelper, filePath: ?*String) bool {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(CommonLabels.getInstance().?.START, filePath), self, String.literal("isAuthorized()") });
        }
        const endIndex: i32 = Inheritance.call(HttpRequestUtil.getInstance().?, "getLastSeparatorIndex", .{ filePath });
        const fullPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ String.plus(URLGLOBALS.getWebappPath(), filePath.?.substring2(0, endIndex)), StringUtil.getInstance().?.EMPTY_STRING });
        const downloadFilePermissions: ?*HttpFilePermissions = Inheritance.callStatic(HttpFilePermissions, "create1", .{ fullPath });
        const userRoles: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, downloadFilePermissions.?.getUserRoles());
        const userRole: ?*UserRole = Inheritance.upcast(?*UserRole, Inheritance.receiver(authenticationHelper.?, "getRole").getRole());
        const basicUserRole: ?*BasicUserRole = Inheritance.upcast(?*BasicUserRole, userRole.?.getBasicUserRole());
        if (Inheritance.call(userRoles.?, "contains", .{ basicUserRole })) {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Authorized"), self, String.literal("isAuthorized()") });
            }
            return true;
        } else {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Not Authorized: "), Object.toString(Object.of(basicUserRole))), self, String.literal("isAuthorized()") });
            }
            return false;
        }
    }
};

