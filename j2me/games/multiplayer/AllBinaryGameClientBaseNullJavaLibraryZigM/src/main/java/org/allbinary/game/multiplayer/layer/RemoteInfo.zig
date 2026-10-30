// 
// To change this license header, choose License Headers in Project Properties. 
// To change this template file, choose Tools | Templates 
// and open the template in the editor.  
// Generated Code Do Not Modify
// package org.allbinary.game.multiplayer.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const RemoteInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.multiplayer.layer.RemoteInfo";
    pub const NEW_PLAYER_ID: i32 = 0;
    pub var REMOTE_INFO: ?*RemoteInfo = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        REMOTE_INFO = Inheritance.callStatic(RemoteInfo, "create4", .{ StringUtil.getInstance().?.EMPTY_STRING, -1, -1, RemoteInfo.NEW_PLAYER_ID });
    }
    

    pub fn create4(username: ?*String, actorSessionId: i32, playerInputId: i32, id: i32) *Self {
        _ = username;
        _ = actorSessionId;
        _ = playerInputId;
        _ = id;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

