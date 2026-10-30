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
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const GLOBALS2 = @import("org/allbinary/globals/GLOBALS2.zig").GLOBALS2;
const RequestMapInterface = @import("org/allbinary/logic/communication/http/request/RequestMapInterface.zig").RequestMapInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const HelperTag = @import("tags/HelperTag.zig").HelperTag;
const InventoryItemViewParentTagHelper = @import("admin/taghelpers/InventoryItemViewParentTagHelper.zig").InventoryItemViewParentTagHelper;

pub const MultipartRequestParamForwardHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.MultipartRequestParamForwardHelper";
    logUtil: ?*LogUtil = null,
    pageContext: ?*PageContext = null,
    requestMapInterface: ?*RequestMapInterface = null,
    page: ?*String = null,
    command: ?*String = null,
    paramVector: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
        
        
    }
    

    pub fn create5(parentHelperTag: ?*HelperTag, page: ?*String, command: ?*String, paramVector: ?*BasicArrayList, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.pageContext = pageContext;
        this.page = page;
        this.command = command;
        this.paramVector = paramVector;
        this.requestMapInterface = Inheritance.upcast(@TypeOf(this.requestMapInterface), Inheritance.call(InventoryItemViewParentTagHelper.getInstance().?, "getRequestMapInterface", .{ parentHelperTag }));
        return this;
    }
    

    // throws Exception
    pub fn forward(self: *Self) void {
        { // try
            if (self.shouldForward()) {
                const params: ?*String = Inheritance.upcast(?*String, self.getParams());
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.page });
                _ = Inheritance.call(stringBuffer.?, "append", .{ params });
                _ = Inheritance.call(self.pageContext.?, "forward", .{ Object.toString(Object.of(stringBuffer)) });
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("forward()"), e });
//             }
    }
    

    pub fn getParams(self: *Self) ?*String {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const AMP: ?*String = Inheritance.upcast(?*String, commonSeps.?.AMPERSAND);
        const QUESTION: ?*String = Inheritance.upcast(?*String, commonSeps.?.QUESTION);
        const EQUALS: ?*String = Inheritance.upcast(?*String, commonSeps.?.EQUALS);
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.requestMapInterface.?.getRequestHashMap());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const size: i32 = self.paramVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const key: ?*String = Inheritance.cast(?*String, Inheritance.call(self.paramVector.?, "get", .{ index }));
            const value: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ key }));
            if (index != 0) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ AMP });
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ QUESTION });
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ key });
            _ = Inheritance.call(stringBuffer.?, "append", .{ EQUALS });
            _ = Inheritance.call(stringBuffer.?, "append", .{ value });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn shouldForward(self: *Self) bool {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.requestMapInterface.?.getRequestHashMap());
        const requestCommand: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ GLOBALS2.ADMINCOMMAND }));
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ self.command }) or (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ requestCommand }) and Inheritance.call(self.command.?, "compareTo", .{ requestCommand }) == 0)) {
            return true;
        }
        return false;
    }
};

