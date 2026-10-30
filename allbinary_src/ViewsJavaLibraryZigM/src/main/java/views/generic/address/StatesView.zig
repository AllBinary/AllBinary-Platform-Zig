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
// package views.generic.address

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StreetAddressData = @import("org/allbinary/business/user/address/StreetAddressData.zig").StreetAddressData;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LineReader = @import("org/allbinary/logic/io/LineReader.zig").LineReader;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;

pub const StatesView = struct {
    const Self = @This();
    pub const java_name = "views.generic.address.StatesView";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        _ = self;
        { // try
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ StreetAddressData.STATES }));
            const statesFile: ?*String = Inheritance.upcast(?*String, String.plus(URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().?.LINEDATAPATH, String.literal("states.txt")));
            const lineReader: ?*LineReader = Inheritance.callStatic(LineReader, "create1", .{ statesFile });
            while (lineReader.?.hasNext()) {
                const option: ?*String = Inheritance.upcast(?*String, lineReader.?.next());
                _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, StreetAddressData.STATE, option }) });
            }
            return node;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.FAILURE, self, String.literal("toXmlNode"), e });
//             }
//             return null;
    }
};

