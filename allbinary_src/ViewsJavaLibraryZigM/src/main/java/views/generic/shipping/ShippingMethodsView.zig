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
// package views.generic.shipping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const BasketInterface = @import("org/allbinary/business/user/commerce/inventory/basket/BasketInterface.zig").BasketInterface;
const OrderInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderInterface.zig").OrderInterface;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const TaxFactory = @import("org/allbinary/business/user/commerce/money/tax/TaxFactory.zig").TaxFactory;
const ShippingMethods = @import("org/allbinary/business/user/commerce/shipping/ShippingMethods.zig").ShippingMethods;
const ShippingMethodsData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodsData.zig").ShippingMethodsData;
const ShippingInterface = @import("org/allbinary/business/user/commerce/shipping/modules/ShippingInterface.zig").ShippingInterface;
const StreetAddressesEntityInterface = @import("org/allbinary/data/tables/user/address/StreetAddressesEntityInterface.zig").StreetAddressesEntityInterface;
const ShippingAddressesEntityFactory = @import("org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntityFactory.zig").ShippingAddressesEntityFactory;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;
const Float = @import("java/lang/Float.zig").Float;

pub const ShippingMethodsView = struct {
    const Self = @This();
    pub const java_name = "views.generic.shipping.ShippingMethodsView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    shippingMethods: ?*ShippingMethods = null,
    storeFrontInterface: ?*StoreFrontInterface = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.storeFrontInterface = Inheritance.upcast(@TypeOf(this.storeFrontInterface), Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(this, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName() }));
        this.shippingMethods = Inheritance.callStatic(ShippingMethods, "create2", .{ Inheritance.fieldPointer(this, "abeClientInformation").*, this.storeFrontInterface });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            const shippingMethodsNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ ShippingMethodsData.SHIPPINGMETHODSORDERSUMMARIES }));
            const order: ?*OrderInterface = Inheritance.upcast(?*OrderInterface, Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getOrder").getOrder());
            const basket: ?*BasketInterface = Inheritance.upcast(?*BasketInterface, Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getOrder").getOrder().?, "getBasket").getBasket());
            const shippingAddressesEntityInterface: ?*StreetAddressesEntityInterface = Inheritance.upcast(?*StreetAddressesEntityInterface, Inheritance.call(ShippingAddressesEntityFactory.getInstance().?, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getUserName").getUserName() }));
            const streetAddress: ?*StreetAddress = Inheritance.upcast(?*StreetAddress, Inheritance.receiver(shippingAddressesEntityInterface.?, "getDefault").getDefault());
            const shippingVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.shippingMethods.?.get());
            const size: i32 = shippingVector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const shippingMethodNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ ShippingMethodsData.SHIPPINGMETHODORDERSUMMARY }));
                const shipping: ?*ShippingInterface = Inheritance.cast(?*ShippingInterface, Inheritance.call(shippingVector.?, "get", .{ index }));
                const shippingView: ?*DomNodeInterface = Inheritance.cast(?*DomNodeInterface, shipping);
                _ = Inheritance.call(shippingMethodNode.?, "appendChild", .{ Inheritance.call(shippingView.?, "toXmlNode", .{ document }) });
                const shippingCost: ?*Money = Inheritance.upcast(?*Money, Inheritance.call(shipping.?, "getCost", .{ order }));
                const subTotal: ?*Money = Inheritance.upcast(?*Money, basket.?.getSubTotal());
                const taxRate: ?*Float = Inheritance.upcast(?*Float, Inheritance.call(Inheritance.call(TaxFactory.getInstance().?, "getInstance", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, self.storeFrontInterface }).?, "getTaxRate", .{ streetAddress, self.storeFrontInterface }));
                const tax: ?*Money = Money.create();
                const total: ?*Money = Money.create();
                _ = Inheritance.call(total.?, "add", .{ Object.toString(Object.of(shippingCost)) });
                _ = Inheritance.call(total.?, "add", .{ Object.toString(Object.of(subTotal)) });
                _ = Inheritance.call(tax.?, "add", .{ Object.toString(Object.of(total)) });
                _ = Inheritance.call(tax.?, "multiply", .{ taxRate });
                _ = Inheritance.call(total.?, "add", .{ Object.toString(Object.of(tax)) });
                _ = Inheritance.call(shippingMethodNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ShippingMethodsData.SHIPPINGCOST, Object.toString(Object.of(shippingCost)) }) });
                _ = Inheritance.call(shippingMethodNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ShippingMethodsData.TAXRATE, String.valueOf(taxRate.?) }) });
                _ = Inheritance.call(shippingMethodNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ShippingMethodsData.SUBTOTAL, Object.toString(Object.of(subTotal)) }) });
                _ = Inheritance.call(shippingMethodNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ShippingMethodsData.TAX, Object.toString(Object.of(tax)) }) });
                _ = Inheritance.call(shippingMethodNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, ShippingMethodsData.TOTAL, Object.toString(Object.of(total)) }) });
                _ = Inheritance.call(shippingMethodNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, EntryData.getInstance().?.DEFAULT, Inheritance.receiverOf(self.shippingMethods.?.getDefault().?, "getName").getName() }) });
                _ = Inheritance.call(shippingMethodsNode.?, "appendChild", .{ shippingMethodNode });
                }
            }
            return shippingMethodsNode;
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
//             const @"error": ?*String = String.literal("Failed to view ShippingMethods"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view()"), e });
//             }
//             return @"error";
    }
};

