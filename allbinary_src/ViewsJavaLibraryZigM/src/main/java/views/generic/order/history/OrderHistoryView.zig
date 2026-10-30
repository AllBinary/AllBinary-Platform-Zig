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
// package views.generic.order.history

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const OrderData = @import("org/allbinary/business/user/commerce/inventory/order/OrderData.zig").OrderData;
const OrderHistory = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistory.zig").OrderHistory;
const OrderHistoryData = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryData.zig").OrderHistoryData;
const OrderHistoryEntity = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntity.zig").OrderHistoryEntity;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const GLOBALS2 = @import("org/allbinary/globals/GLOBALS2.zig").GLOBALS2;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;

pub const OrderHistoryView = struct {
    const Self = @This();
    pub const java_name = "views.generic.order.history.OrderHistoryView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    request: ?*HttpServletRequest = null,
    shipped: ?*String = null,
    partiallyShipped: ?*String = null,
    processing: ?*String = null,
    preprocessing: ?*String = null,
    cancelled: ?*String = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
        
        
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.request = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.receiver(this, "getPageContext").getPageContext().?, "getRequest").getRequest());
        this.preprocessing = Inheritance.upcast(@TypeOf(this.preprocessing), Inheritance.call(this.request.?, "getParameter", .{ OrderHistoryData.PREPROCESSINGNAME }));
        this.shipped = Inheritance.upcast(@TypeOf(this.shipped), Inheritance.call(this.request.?, "getParameter", .{ OrderHistoryData.SHIPPEDNAME }));
        this.partiallyShipped = Inheritance.upcast(@TypeOf(this.partiallyShipped), Inheritance.call(this.request.?, "getParameter", .{ OrderHistoryData.PARTIALLYSHIPPEDNAME }));
        this.processing = Inheritance.upcast(@TypeOf(this.processing), Inheritance.call(this.request.?, "getParameter", .{ OrderHistoryData.PROCESSINGNAME }));
        this.cancelled = Inheritance.upcast(@TypeOf(this.cancelled), Inheritance.call(this.request.?, "getParameter", .{ OrderHistoryData.CANCELLEDNAME }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ OrderData.ORDERS }));
            const orderHistoryEntity: ?*OrderHistoryEntity = OrderHistoryEntity.create();
            const orderReviewVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(orderHistoryEntity.?, "getOrders", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getUserName").getUserName() }));
            const size: i32 = orderReviewVector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const orderHistory: ?*OrderHistory = Inheritance.cast(?*OrderHistory, Inheritance.call(orderReviewVector.?, "get", .{ index }));
                const orderHistoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(orderHistory.?, "toXmlNode", .{ document })); _ = orderHistoryNode;
                const orderNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ Inheritance.receiver(orderHistory.?, "getPaymentMethod").getPaymentMethod() })); _ = orderNode;
                _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(orderHistory.?, "toXmlNode", .{ document }) });
                }
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Attempt to View a users order history"), self, String.literal("view") });
            }
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, OrderHistoryData.PREPROCESSINGNAME, OrderHistoryData.PREPROCESSING }) });
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, OrderHistoryData.PROCESSINGNAME, OrderHistoryData.PROCESSING }) });
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, OrderHistoryData.CANCELLEDNAME, OrderHistoryData.CANCELLED }) });
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, OrderHistoryData.PARTIALLYSHIPPEDNAME, OrderHistoryData.PARTIALLYSHIPPED }) });
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, OrderHistoryData.SHIPPEDNAME, OrderHistoryData.SHIPPED }) });
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, GLOBALS2.VIEWNAME, GLOBALS2.VIEW }) });
            return node;
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
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            _ = self.addDomNodeInterfaces();
            return Inheritance.upcast(?*String, self.base.view());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

