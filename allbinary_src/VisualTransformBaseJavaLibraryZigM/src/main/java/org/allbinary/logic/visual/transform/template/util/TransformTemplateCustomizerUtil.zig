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
// package org.allbinary.logic.visual.transform.template.util

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const GLOBALS2 = @import("org/allbinary/globals/GLOBALS2.zig").GLOBALS2;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const CustomizerTransformInfoData = @import("org/allbinary/logic/visual/transform/info/CustomizerTransformInfoData.zig").CustomizerTransformInfoData;
const BodyData = @import("org/allbinary/logic/visual/transform/template/customizer/bodies/BodyData.zig").BodyData;
const TitleData = @import("org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData.zig").TitleData;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const TransformTemplateCustomizerUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil";
    logUtil: ?*LogUtil = null,
    CUSTOMIZER_NAME: ?*String = null,
    BODY_VIEWNAMEKEY: ?*String = null,
    TITLE_VIEWNAMEKEY: ?*String = null,
    GLOBALS_NEW: ?*String = null,
    GLOBALS_INSERT: ?*String = null,
    GLOBALS_DELETE: ?*String = null,
    GLOBALS_EDIT: ?*String = null,
    GLOBALS_UPDATE: ?*String = null,
    var instance: ?*TransformTemplateCustomizerUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformTemplateCustomizerUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
        
        
        
        
        
    }
    

    pub fn getInstance() ?*TransformTemplateCustomizerUtil {
        return Inheritance.upcast(?*TransformTemplateCustomizerUtil, TransformTemplateCustomizerUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const SPACE: ?*String = Inheritance.upcast(?*String, CommonSeps.getInstance().?.SPACE);
        this.CUSTOMIZER_NAME = Inheritance.upcast(@TypeOf(this.CUSTOMIZER_NAME), String.plus(SPACE, CustomizerTransformInfoData.NAME));
        this.BODY_VIEWNAMEKEY = Inheritance.upcast(@TypeOf(this.BODY_VIEWNAMEKEY), String.plus(SPACE, BodyData.getInstance().?.VIEWNAMEKEY));
        this.TITLE_VIEWNAMEKEY = Inheritance.upcast(@TypeOf(this.TITLE_VIEWNAMEKEY), String.plus(SPACE, TitleData.getInstance().?.VIEWNAMEKEY));
        this.GLOBALS_NEW = Inheritance.upcast(@TypeOf(this.GLOBALS_NEW), String.plus(GLOBALS2.NEW, SPACE));
        this.GLOBALS_INSERT = Inheritance.upcast(@TypeOf(this.GLOBALS_INSERT), String.plus(commonStrings.?.INSERT, SPACE));
        this.GLOBALS_DELETE = Inheritance.upcast(@TypeOf(this.GLOBALS_DELETE), String.plus(commonStrings.?.DELETE, SPACE));
        this.GLOBALS_EDIT = Inheritance.upcast(@TypeOf(this.GLOBALS_EDIT), String.plus(GLOBALS2.EDIT, SPACE));
        this.GLOBALS_UPDATE = Inheritance.upcast(@TypeOf(this.GLOBALS_UPDATE), String.plus(commonStrings.?.UPDATE, SPACE));
        return this;
    }
    

    pub fn getPageNameHack(self: *Self, viewName: ?*String, storeName: ?*String) ?*String {
        const SPACE: ?*String = Inheritance.upcast(?*String, CommonSeps.getInstance().?.SPACE);
        const ONE_EMPTY_STRING_ARRAY: []?*String = StringUtil.getInstance().?.ONE_EMPTY_STRING_ARRAY;
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ @constCast(&[_]?*String{ String.plus(viewName, SPACE) })[0..], ONE_EMPTY_STRING_ARRAY });
        _ = Inheritance.call(hashMap.?, "put", .{ @constCast(&[_]?*String{ String.plus(storeName, SPACE) })[0..], ONE_EMPTY_STRING_ARRAY });
        _ = Inheritance.call(hashMap.?, "put", .{ @constCast(&[_]?*String{ self.CUSTOMIZER_NAME })[0..], ONE_EMPTY_STRING_ARRAY });
        _ = Inheritance.call(hashMap.?, "put", .{ @constCast(&[_]?*String{ self.BODY_VIEWNAMEKEY })[0..], ONE_EMPTY_STRING_ARRAY });
        _ = Inheritance.call(hashMap.?, "put", .{ @constCast(&[_]?*String{ self.TITLE_VIEWNAMEKEY })[0..], ONE_EMPTY_STRING_ARRAY });
        _ = Inheritance.call(hashMap.?, "put", .{ @constCast(&[_]?*String{ self.GLOBALS_NEW })[0..], ONE_EMPTY_STRING_ARRAY });
        _ = Inheritance.call(hashMap.?, "put", .{ @constCast(&[_]?*String{ self.GLOBALS_INSERT })[0..], ONE_EMPTY_STRING_ARRAY });
        _ = Inheritance.call(hashMap.?, "put", .{ @constCast(&[_]?*String{ self.GLOBALS_DELETE })[0..], ONE_EMPTY_STRING_ARRAY });
        _ = Inheritance.call(hashMap.?, "put", .{ @constCast(&[_]?*String{ self.GLOBALS_EDIT })[0..], ONE_EMPTY_STRING_ARRAY });
        _ = Inheritance.call(hashMap.?, "put", .{ @constCast(&[_]?*String{ self.GLOBALS_UPDATE })[0..], ONE_EMPTY_STRING_ARRAY });
        const replace: ?*Replace = null;
        const rootViewName: ?*String = Inheritance.upcast(?*String, Inheritance.call(replace.?, "all", .{ viewName }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("RootViewName for ObjectConfig: "), rootViewName), self, String.literal("getPageNameHack") });
        }
        return rootViewName;
    }
};

