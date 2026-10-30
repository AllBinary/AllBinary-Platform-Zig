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
// package views.generic.address.billing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const BillingAddressData = @import("org/allbinary/business/user/address/BillingAddressData.zig").BillingAddressData;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const StreetAddressData = @import("org/allbinary/business/user/address/StreetAddressData.zig").StreetAddressData;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BillingAddressesView = struct {
    const Self = @This();
    pub const java_name = "views.generic.address.billing.BillingAddressesView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    request: ?*HttpServletRequest = null,
    streetAddresses: ?*BasicArrayList = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.streetAddresses = null;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        const httpTransformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, Inheritance.receiver(this, "getTransformInfoInterface").getTransformInfoInterface());
        this.request = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.receiver(httpTransformInfoInterface.?, "getPageContext").getPageContext().?, "getRequest").getRequest());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getRequest(self: *Self) ?*HttpServletRequest {
        return self.request;
    }
    

    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            const billingAddressesNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ BillingAddressData.MULTIPLE }));
            const size: i32 = self.streetAddresses.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const streetAddress: ?*StreetAddress = Inheritance.cast(?*StreetAddress, Inheritance.call(self.streetAddresses.?, "get", .{ index }));
                _ = Inheritance.call(billingAddressesNode.?, "appendChild", .{ Inheritance.call(streetAddress.?, "toXmlNode", .{ document }) });
                }
            }
            _ = Inheritance.call(billingAddressesNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, StreetAddressData.NUMBEROFADDRESSES, String.valueOf(Inheritance.callStatic(Integer, "create1", .{ self.streetAddresses.?.size() }).?) }) });
            return billingAddressesNode;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.XSLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("toXmlNode"), e });
//             }
//             return null;
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

