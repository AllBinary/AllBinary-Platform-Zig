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
// package org.allbinary.business.user.commerce.money.payment.types

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const PaymentGatewaysData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewaysData.zig").PaymentGatewaysData;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CryptFileReader = @import("org/allbinary/logic/control/crypt/file/CryptFileReader.zig").CryptFileReader;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoObjectConfigData = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData.zig").TransformInfoObjectConfigData;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const PaymentType = @import("org/allbinary/business/user/commerce/money/payment/types/PaymentType.zig").PaymentType;

pub const PaymentTypeUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    PAYMENTGATEWAYFILEPATHSTRING: ?*String = null,
    SHIPPINGMETHODSFILENAME: ?*String = null,
    defaultName: ?*String = null,
    paymentTypeVector: ?*BasicArrayList = null,
    var instance: ?*PaymentTypeUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PaymentTypeUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.SHIPPINGMETHODSFILENAME = String.literal("paymentGatewayTypes.xml");
        this.defaultName = null;
        this.paymentTypeVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    // Java static initializer: call this once at startup
    pub fn staticInitializer() void {
    }
    

    pub fn getInstance() ?*PaymentTypeUtil {
        return Inheritance.upcast(?*PaymentTypeUtil, PaymentTypeUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const sep: ?*String = Inheritance.upcast(?*String, AbPathData.getInstance().?.SEPARATOR);
        _ = Inheritance.call(stringBuffer.?, "append", .{ sep });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("generic") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ sep });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("user") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ sep });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("commerce") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ sep });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("money") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ sep });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("payment") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ sep });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("gateway") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ sep });
        this.PAYMENTGATEWAYFILEPATHSTRING = Inheritance.upcast(@TypeOf(this.PAYMENTGATEWAYFILEPATHSTRING), Object.toString(Object.of(stringBuffer)));
        return this;
    }
    

    pub fn add(self: *Self, paymentType: ?*PaymentType) void {
        _ = Inheritance.call(self.paymentTypeVector.?, "add", .{ paymentType });
    }
    

    // throws Exception
    pub fn get(self: *Self, paymentTypeString: ?*String) ?*PaymentType {
        const size: i32 = self.paymentTypeVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const paymentType: ?*PaymentType = Inheritance.cast(?*PaymentType, Inheritance.call(self.paymentTypeVector.?, "get", .{ i }));
            if (Inheritance.call(Inheritance.receiverOf(paymentType.?.getBasicPaymentType().?, "getName").getName().?, "compareTo", .{ paymentTypeString }) == 0) {
                return paymentType;
            }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Unknown PaymentType: "), paymentTypeString); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn initDefault(self: *Self, storeName: ?*String) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENT })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("initDefault Payment: "), self.defaultName), self, String.literal("initDefault") });
        }
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ self.defaultName })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getMainPath() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH });
            _ = Inheritance.call(stringBuffer.?, "append", .{ storeName });
            _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.PAYMENTGATEWAYFILEPATHSTRING });
            const abPath: ?*AbPath = Inheritance.cast(?*AbPath, Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), self.SHIPPINGMETHODSFILENAME }));
            const data: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ TransformInfoObjectConfigData.getInstance().?.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData.getInstance().?.ENCRYPTED_EXTENSION }), "get", .{ abPath }));
            const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ data }));
            const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(document.?, "getElementsByTagName", .{ PaymentGatewaysData.NAME }));
            {
                var index: i32 = 0;
                while (index < nodeList.?.getLength()) : (index += 1) {
                const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
                const defaultPaymentGatewayNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ EntryData.getInstance().?.DEFAULT, node.?.getChildNodes() }));
                const defaultPaymentGatewayNodeValue: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ defaultPaymentGatewayNode }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENT })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("DefaultPaymentGatewayNodeValue: "), defaultPaymentGatewayNodeValue), self, String.literal("initDefault") });
                }
                if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ defaultPaymentGatewayNodeValue })) {
                    self.defaultName = defaultPaymentGatewayNodeValue;
                }
                }
            }
        }
    }
    

    // throws Exception
    pub fn getDefault(self: *Self, storeName: ?*String) ?*PaymentType {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PAYMENT })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getDefault") });
        }
        _ = Inheritance.call(self, "initDefault", .{ storeName });
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ self.defaultName })) {
            return Inheritance.upcast(?*PaymentType, Inheritance.call(self, "get", .{ self.defaultName }));
        }
        std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("No Default: "), self.defaultName); break :exception error.Exception; }});
    }
    

    pub fn isContain(self: *Self, paymentType: ?*PaymentType) bool {
        return Inheritance.call(self.paymentTypeVector.?, "contains", .{ paymentType });
    }
    

    pub fn difference(self: *Self, a_PaymentTypeVector: ?*BasicArrayList) ?*BasicArrayList {
        const diff: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = self.paymentTypeVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const paymentType: ?*PaymentType = Inheritance.cast(?*PaymentType, Inheritance.call(self.paymentTypeVector.?, "get", .{ i }));
            if (!Inheritance.call(a_PaymentTypeVector.?, "contains", .{ paymentType })) {
                _ = Inheritance.call(diff.?, "add", .{ paymentType });
            }
            }
        }
        return diff;
    }
};

