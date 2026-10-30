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
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const GenericStoreTransformInfoObjectConfig = @import("org/allbinary/logic/visual/transform/info/objectConfig/GenericStoreTransformInfoObjectConfig.zig").GenericStoreTransformInfoObjectConfig;
const TransformInfoObjectConfig = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig.zig").TransformInfoObjectConfig;
const TransformInfoObjectConfigAndManipulatorFactoryBase = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactoryBase.zig").TransformInfoObjectConfigAndManipulatorFactoryBase;
const TransformInfoObjectConfigData = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData.zig").TransformInfoObjectConfigData;
const TransformInfoObjectConfigInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface.zig").TransformInfoObjectConfigInterface;

pub const TransformInfoObjectConfigAndManipulatorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory";
    base: TransformInfoObjectConfigAndManipulatorFactoryBase = undefined,
    logUtil: ?*LogUtil = null,
    var instance: ?*TransformInfoObjectConfigAndManipulatorFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformInfoObjectConfigAndManipulatorFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*TransformInfoObjectConfigAndManipulatorFactory {
        return Inheritance.upcast(?*TransformInfoObjectConfigAndManipulatorFactory, TransformInfoObjectConfigAndManipulatorFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TransformInfoObjectConfigAndManipulatorFactoryBase.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getInstance3(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, objectConfigFileAbPath: ?*AbPath) ?*TransformInfoObjectConfigInterface {
        { // try
            const data: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ TransformInfoObjectConfigData.getInstance().?.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData.getInstance().?.ENCRYPTED_EXTENSION }), "get", .{ objectConfigFileAbPath }));
            return Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.call(self, "getInstance", .{ abeClientInformation, transformInfoInterface, Inheritance.callStatic(DomDocumentHelper, "create", .{ data }) }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Could Not Load Object Config"), TransformInfoObjectConfigAndManipulatorFactory.getInstance(), Inheritance.fieldPointer(self, "commonStrings").*.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn getInstance2(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface) ?*TransformInfoObjectConfigInterface {
        _ = self;
        { // try
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            if (transformInfoInterface != null and !Inheritance.call(stringValidationUtil.?, "isEmpty", .{ Inheritance.receiver(transformInfoInterface.?, "getStoreName").getStoreName() })) {
                return Inheritance.cast(?*TransformInfoObjectConfigInterface, Inheritance.callStatic(GenericStoreTransformInfoObjectConfig, "create2", .{ abeClientInformation, transformInfoInterface }));
            } else {
                return Inheritance.cast(?*TransformInfoObjectConfigInterface, Inheritance.callStatic(TransformInfoObjectConfig, "create1", .{ transformInfoInterface }));
            }
        }
        // catch (Exception e):
//             var @"error": ?*String = String.literal("Failed To Get Instance: "); _ = @"error";
//             if (transformInfoInterface != null) {
//                 @"error" = Inheritance.upcast(@TypeOf(@"error"), String.plus(@"error", Inheritance.receiver(transformInfoInterface.?, "getName").getName()));
//             }
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, TransformInfoObjectConfigAndManipulatorFactory.getInstance(), Inheritance.fieldPointer(self, "commonStrings").*.?.GET_INSTANCE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance3(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, document: ?*Document) ?*TransformInfoObjectConfigInterface {
        _ = self;
        { // try
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            if (transformInfoInterface != null and !Inheritance.call(stringValidationUtil.?, "isEmpty", .{ Inheritance.receiver(transformInfoInterface.?, "getStoreName").getStoreName() })) {
                return Inheritance.cast(?*TransformInfoObjectConfigInterface, Inheritance.callStatic(GenericStoreTransformInfoObjectConfig, "create3", .{ abeClientInformation, transformInfoInterface, document }));
            } else {
                return Inheritance.cast(?*TransformInfoObjectConfigInterface, Inheritance.callStatic(TransformInfoObjectConfig, "create2", .{ transformInfoInterface, document }));
            }
        }
        // catch (Exception e):
//             var @"error": ?*String = String.literal("Failed To Get Instance: "); _ = @"error";
//             if (transformInfoInterface != null) {
//                 @"error" = Inheritance.upcast(@TypeOf(@"error"), String.plus(@"error", Inheritance.receiver(transformInfoInterface.?, "getName").getName()));
//             }
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, TransformInfoObjectConfigAndManipulatorFactory.getInstance(), String.literal("getInstance(document)"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

