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
// package org.allbinary.business.user.commerce.money.tax.modules

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const StreetAddressData = @import("org/allbinary/business/user/address/StreetAddressData.zig").StreetAddressData;
const TaxData = @import("org/allbinary/business/user/commerce/money/tax/components/TaxData.zig").TaxData;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CryptFileReader = @import("org/allbinary/logic/control/crypt/file/CryptFileReader.zig").CryptFileReader;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoObjectConfigData = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData.zig").TransformInfoObjectConfigData;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const TaxModuleInterface = @import("org/allbinary/business/user/commerce/money/tax/modules/TaxModuleInterface.zig").TaxModuleInterface;
const Float = @import("java/lang/Float.zig").Float;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const SimpleStateTaxModule = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule";
    pub const java_interfaces = .{ TaxModuleInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    streetAddress: ?*StreetAddress = null,
    storeFrontInterface: ?*StoreFrontInterface = null,
    ALL: ?*String = null,
    STATETAXPATH: ?*String = null,
    STATETAXFILE: ?*String = null,
    document: ?*Document = null,
    // Implements TaxModuleInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.streetAddress = null;
        this.storeFrontInterface = null;
        this.ALL = Inheritance.upcast(?*String, CommonPhoneStrings.getInstance().?.STAR);
        this.STATETAXPATH = String.literal("/generic/taxes/");
        this.STATETAXFILE = String.literal("stateTaxation.xml");
        this.document = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getTaxRate(self: *Self, streetAddress: ?*StreetAddress, storeFrontInterface: ?*StoreFrontInterface) ?*Float {
        self.streetAddress = streetAddress;
        self.storeFrontInterface = storeFrontInterface;
        const fileAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ String.plus(String.plus(URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH, Inheritance.receiver(self.storeFrontInterface.?, "getName").getName()), self.STATETAXPATH), self.STATETAXFILE });
        const data: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ TransformInfoObjectConfigData.getInstance().?.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData.getInstance().?.ENCRYPTED_EXTENSION }), "get", .{ fileAbPath }));
        self.document = Inheritance.upcast(@TypeOf(self.document), Inheritance.callStatic(DomDocumentHelper, "create", .{ data }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAX })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Tax Doc: "), Inheritance.callStatic(XmlDocumentHelper, "toString", .{ self.document })), self, String.literal("getTaxRate") });
        }
        var state: ?*String = Inheritance.upcast(?*String, self.streetAddress.?.getState());
        const country: ?*String = Inheritance.upcast(?*String, self.streetAddress.?.getCountry());
        state = Inheritance.upcast(@TypeOf(state), state.?.toUpperCase());
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(self.document.?, "getElementsByTagName", .{ TaxData.NAME }));
        {
            var index: i32 = 0;
            while (index < nodeList.?.getLength()) : (index += 1) {
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            const taxNodeChildren: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
            const streetAddressNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ StreetAddressData.NAME, taxNodeChildren }));
            const taxableStreetAddress: ?*StreetAddress = Inheritance.callStatic(StreetAddress, "create1", .{ streetAddressNode });
            const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
            if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ country }) and !Inheritance.call(stringValidationUtil.?, "isEmpty", .{ taxableStreetAddress.?.getCountry() }) and Inheritance.call(country.?, "compareTo", .{ taxableStreetAddress.?.getCountry() }) == 0) {
                if (state != null and taxableStreetAddress.?.getState() != null and Inheritance.call(state.?, "compareTo", .{ taxableStreetAddress.?.getState() }) == 0) {
                    const rateNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ TaxData.RATE, taxNodeChildren }));
                    const taxRate: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ rateNode }));
                    const taxRateFloat: ?*Float = Inheritance.callStatic(Float, "create1", .{ Inheritance.callStatic(Float, "create1", .{ taxRate }).floatValue() * .01 });
                    return taxRateFloat;
                }
            }
            }
        }
        return Inheritance.callStatic(Float, "create1", .{ 0 });
    }
    

    pub fn isValid(self: *Self, streetAddress: ?*StreetAddress, storeFrontInterface: ?*StoreFrontInterface) ?*Boolean {
        { // try
            self.streetAddress = streetAddress;
            self.storeFrontInterface = storeFrontInterface;
            const fileAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ String.plus(String.plus(URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH, Inheritance.receiver(self.storeFrontInterface.?, "getName").getName()), self.STATETAXPATH), self.STATETAXFILE });
            const data: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ TransformInfoObjectConfigData.getInstance().?.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData.getInstance().?.ENCRYPTED_EXTENSION }), "get", .{ fileAbPath }));
            self.document = Inheritance.upcast(@TypeOf(self.document), Inheritance.callStatic(DomDocumentHelper, "create", .{ data }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAX })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Tax Doc: "), Inheritance.callStatic(XmlDocumentHelper, "toString", .{ self.document })), self, self.commonStrings.?.IS_VALID });
            }
            const country: ?*String = Inheritance.upcast(?*String, self.streetAddress.?.getCountry());
            const rootNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(Inheritance.call(self.document.?, "getElementsByTagName", .{ TransformInfoObjectConfigData.getInstance().?.NAME }).?, "item", .{ 0 })); _ = rootNode;
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(self.document.?, "getElementsByTagName", .{ TaxData.NAME }));
            {
                var index: i32 = 0;
                while (index < nodeList.?.getLength()) : (index += 1) {
                const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
                const taxNodeChildren: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
                const streetAddressNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ StreetAddressData.NAME, taxNodeChildren }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAX })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("StreetAddress Node: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ streetAddressNode.?.getNodeName() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Value: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ streetAddressNode.?.getNodeValue() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Number Of Children: ") });
                    _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(streetAddressNode.?.getChildNodes().?, "getLength").getLength())) });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.commonStrings.?.IS_VALID });
                }
                const taxableStreetAddress: ?*StreetAddress = Inheritance.callStatic(StreetAddress, "create1", .{ streetAddressNode });
                const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
                if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ country }) and !Inheritance.call(stringValidationUtil.?, "isEmpty", .{ taxableStreetAddress.?.getCountry() }) and Inheritance.call(taxableStreetAddress.?.getCountry().?, "compareTo", .{ self.ALL }) == 0) {
                    return Inheritance.upcast(?*Boolean, Boolean.TRUE);
                }
                if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ country }) and !Inheritance.call(stringValidationUtil.?, "isEmpty", .{ taxableStreetAddress.?.getCountry() }) and Inheritance.call(country.?, "compareTo", .{ taxableStreetAddress.?.getCountry() }) == 0) {
                    const state: ?*String = Inheritance.upcast(?*String, self.streetAddress.?.getState());
                    if (state != null) {
                        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
                    }
                }
                }
            }
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate"), self, self.commonStrings.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
};

