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
// package views.admin.payment.gateways

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const PaymentGatewayData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData.zig").PaymentGatewayData;
const PaymentGatewaysData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewaysData.zig").PaymentGatewaysData;
const BasicPaymentType = @import("org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType.zig").BasicPaymentType;
const PaymentTypeUtil = @import("org/allbinary/business/user/commerce/money/payment/types/PaymentTypeUtil.zig").PaymentTypeUtil;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;

pub const PaymentGatewaysView = struct {
    const Self = @This();
    pub const java_name = "views.admin.payment.gateways.PaymentGatewaysView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    paymentGatewayVector: ?*BasicArrayList = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, gatewayVector: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.paymentGatewayVector = gatewayVector;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            const storeName: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName());
            const paymentGatewaysNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ PaymentGatewaysData.NAME }));
            const size: i32 = self.paymentGatewayVector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const paymentType: ?*BasicPaymentType = Inheritance.cast(?*BasicPaymentType, Inheritance.call(self.paymentGatewayVector.?, "get", .{ index }));
                const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, paymentType.?.toHashMap());
                _ = Inheritance.call(hashMap.?, "put", .{ EntryData.getInstance().?.DEFAULT, Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.call(PaymentTypeUtil.getInstance().?, "getDefault", .{ storeName }).?, "getBasicPaymentType").getBasicPaymentType().?, "getName").getName() });
                const paymentGatewayNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNodeWithValueNodes", .{ document, Object.toString(Object.of(PaymentGatewayData.NAME)), hashMap }));
                _ = Inheritance.call(paymentGatewaysNode.?, "appendChild", .{ paymentGatewayNode });
                }
            }
            return paymentGatewaysNode;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.XSLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("toXmlNode"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn addDomNodeInterfaces(self: *Self) void {
        _ = Inheritance.call(self, "addDomNodeInterface", .{ Inheritance.cast(?*DomNodeInterface, self) });
    }
    

    pub fn view(self: *Self) ?*String {
        { // try
            _ = self.addDomNodeInterfaces();
            return Inheritance.upcast(?*String, self.base.view());
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to view payment gateways"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             return @"error";
    }
};

