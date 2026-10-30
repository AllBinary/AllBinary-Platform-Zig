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
// package org.allbinary.logic.visual.transform.info.objectConfig

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CryptFileReader = @import("org/allbinary/logic/control/crypt/file/CryptFileReader.zig").CryptFileReader;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TransformInfoObjectConfig = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig.zig").TransformInfoObjectConfig;
const TransformInfoObjectConfigData = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData.zig").TransformInfoObjectConfigData;
const TransformInfoObjectConfigInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface.zig").TransformInfoObjectConfigInterface;

pub const TransformInfoObjectConfigNoManipulationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*TransformInfoObjectConfigNoManipulationFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformInfoObjectConfigNoManipulationFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*TransformInfoObjectConfigNoManipulationFactory {
        return Inheritance.upcast(?*TransformInfoObjectConfigNoManipulationFactory, TransformInfoObjectConfigNoManipulationFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance2(self: *Self, transformInfoInterface: ?*TransformInfoInterface, objectConfigFileAbPath: ?*AbPath) ?*TransformInfoObjectConfigInterface {
        _ = self;
        { // try
            const transformInfoObjectConfigData: ?*TransformInfoObjectConfigData = Inheritance.upcast(?*TransformInfoObjectConfigData, TransformInfoObjectConfigData.getInstance());
            const data: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ transformInfoObjectConfigData.?.UNCRYPTED_EXTENSION, transformInfoObjectConfigData.?.getInstance().?.ENCRYPTED_EXTENSION }), "get", .{ objectConfigFileAbPath }));
            return Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.callStatic(TransformInfoObjectConfig, "create2", .{ transformInfoInterface, Inheritance.callStatic(DomDocumentHelper, "create", .{ data }) }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Could Not Load Object Config"), self, commonStrings.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

