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
// package org.allbinary.business.user.commerce.money.tax

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DynamicObjectData = @import("org/allbinary/business/DynamicObjectData.zig").DynamicObjectData;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const TaxData = @import("org/allbinary/business/user/commerce/money/tax/components/TaxData.zig").TaxData;
const SimpleStateTaxModule = @import("org/allbinary/business/user/commerce/money/tax/modules/SimpleStateTaxModule.zig").SimpleStateTaxModule;
const TaxModuleInterface = @import("org/allbinary/business/user/commerce/money/tax/modules/TaxModuleInterface.zig").TaxModuleInterface;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CryptFileReader = @import("org/allbinary/logic/control/crypt/file/CryptFileReader.zig").CryptFileReader;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeFactory = @import("org/allbinary/logic/system/loader/AbeFactory.zig").AbeFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const TransformInfoObjectConfigData = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData.zig").TransformInfoObjectConfigData;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;

pub const TaxFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.tax.TaxFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    TAXATIONFILENAME: ?*String = null,
    var instance: ?*TaxFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TaxFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.TAXATIONFILENAME = String.literal("taxationMethod.xml");
    }
    

    pub fn getInstance() ?*TaxFactory {
        return Inheritance.upcast(?*TaxFactory, TaxFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getInstance2(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, storeFrontInterface: ?*StoreFrontInterface) ?*TaxModuleInterface {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getMainPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFrontInterface.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("generic") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("taxes") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        const abPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), self.TAXATIONFILENAME });
        const transformInfoObjectConfigData: ?*TransformInfoObjectConfigData = Inheritance.upcast(?*TransformInfoObjectConfigData, TransformInfoObjectConfigData.getInstance());
        const data: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ transformInfoObjectConfigData.?.UNCRYPTED_EXTENSION, transformInfoObjectConfigData.?.ENCRYPTED_EXTENSION }), "get", .{ abPath }));
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ data }));
        const taxNameNodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(document.?, "getElementsByTagName", .{ TaxData.NAME }));
        {
            var index: i32 = 0;
            while (index < taxNameNodeList.?.getLength()) : (index += 1) {
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(taxNameNodeList.?, "item", .{ index }));
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
            if (nodeList != null) {
                const classNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ DynamicObjectData.NAME, nodeList }));
                if (classNameNode != null) {
                    const className: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ classNameNode }));
                    return Inheritance.cast(?*TaxModuleInterface, Inheritance.call(AbeFactory.getInstance().?, "getInstance", .{ abeClientInformation, className }));
                } else {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAX })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Class Node Null"), self, self.commonStrings.?.GET_INSTANCE });
                    }
                }
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAX })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Tax Name Node Node Children"), self, self.commonStrings.?.GET_INSTANCE });
                }
            }
            }
        }
        return Inheritance.cast(?*TaxModuleInterface, SimpleStateTaxModule.create());
    }
};

