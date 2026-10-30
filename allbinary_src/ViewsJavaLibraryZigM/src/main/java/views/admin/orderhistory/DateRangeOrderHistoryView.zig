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
// package views.admin.orderhistory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const OrderData = @import("org/allbinary/business/user/commerce/inventory/order/OrderData.zig").OrderData;
const OrderHistory = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistory.zig").OrderHistory;
const OrderHistoryData = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryData.zig").OrderHistoryData;
const OrderHistoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory.zig").OrderHistoryEntityFactory;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const GLOBALS2 = @import("org/allbinary/globals/GLOBALS2.zig").GLOBALS2;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const TimeUtil = @import("org/allbinary/time/TimeUtil.zig").TimeUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const HttpStoreComponentView = @import("views/business/context/modules/storefront/HttpStoreComponentView.zig").HttpStoreComponentView;
const Long = @import("java/lang/Long.zig").Long;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const DateRangeOrderHistoryView = struct {
    const Self = @This();
    pub const java_name = "views.admin.orderhistory.DateRangeOrderHistoryView";
    base: HttpStoreComponentView = undefined,
    logUtil: ?*LogUtil = null,
    VIEWALLORDERS: ?*String = null,
    VIEWORDERSINLASTHOUR: ?*String = null,
    VIEWORDERSINLASTDAY: ?*String = null,
    VIEWORDERSINLASTWEEK: ?*String = null,
    VIEWORDERSINLAST30DAYS: ?*String = null,
    request: ?*HttpServletRequest = null,
    shipped: ?*String = null,
    partiallyShipped: ?*String = null,
    processing: ?*String = null,
    preprocessing: ?*String = null,
    cancelled: ?*String = null,
    dateType: ?*String = null,
    toDate: ?*String = null,
    fromDate: ?*String = null,
    fromYear: ?*String = null,
    fromMonth: ?*String = null,
    fromDay: ?*String = null,
    fromHour: ?*String = null,
    toYear: ?*String = null,
    toMonth: ?*String = null,
    toDay: ?*String = null,
    toHour: ?*String = null,
    command: ?*String = null,
    ON: ?*String = null,
    MAXLEN: i32 = 0,
    // Implements ValidationComponentInterface
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.VIEWALLORDERS = String.literal("View All");
        this.VIEWORDERSINLASTHOUR = String.literal("Last Hour");
        this.VIEWORDERSINLASTDAY = String.literal("Last Day");
        this.VIEWORDERSINLASTWEEK = String.literal("Last Week");
        this.VIEWORDERSINLAST30DAYS = String.literal("30 Days");
        
        this.shipped = null;
        this.partiallyShipped = null;
        this.processing = null;
        this.preprocessing = null;
        this.cancelled = null;
        this.dateType = null;
        this.toDate = null;
        this.fromDate = null;
        this.fromYear = null;
        this.fromMonth = null;
        this.fromDay = null;
        this.fromHour = null;
        this.toYear = null;
        this.toMonth = null;
        this.toDay = null;
        this.toHour = null;
        this.command = null;
        this.ON = String.literal("on");
        this.MAXLEN = 15;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HttpStoreComponentView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.request = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.receiver(this, "getPageContext").getPageContext().?, "getRequest").getRequest());
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getFormData(self: *Self) void {
        self.dateType = Inheritance.upcast(@TypeOf(self.dateType), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.DATETYPE }));
        self.preprocessing = Inheritance.upcast(@TypeOf(self.preprocessing), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.PREPROCESSINGNAME }));
        self.shipped = Inheritance.upcast(@TypeOf(self.shipped), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.SHIPPEDNAME }));
        self.partiallyShipped = Inheritance.upcast(@TypeOf(self.partiallyShipped), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.PARTIALLYSHIPPEDNAME }));
        self.processing = Inheritance.upcast(@TypeOf(self.processing), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.PROCESSINGNAME }));
        self.cancelled = Inheritance.upcast(@TypeOf(self.cancelled), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.CANCELLEDNAME }));
        self.fromYear = Inheritance.upcast(@TypeOf(self.fromYear), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.FROMYEAR }));
        self.fromMonth = Inheritance.upcast(@TypeOf(self.fromMonth), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.FROMMONTH }));
        self.fromDay = Inheritance.upcast(@TypeOf(self.fromDay), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.FROMDAY }));
        self.fromHour = Inheritance.upcast(@TypeOf(self.fromHour), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.FROMHOUR }));
        self.toYear = Inheritance.upcast(@TypeOf(self.toYear), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.TOYEAR }));
        self.toMonth = Inheritance.upcast(@TypeOf(self.toMonth), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.TOMONTH }));
        self.toDay = Inheritance.upcast(@TypeOf(self.toDay), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.TODAY }));
        self.toHour = Inheritance.upcast(@TypeOf(self.toHour), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.TOHOUR }));
        self.command = Inheritance.upcast(@TypeOf(self.command), Inheritance.call(self.request.?, "getParameter", .{ GLOBALS2.ADMINCOMMAND }));
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
    

    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Attempt to View orders in (fromDate=") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.fromDate });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(",toDate=") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.toDate });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(") and status") });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("view") });
            }
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ OrderData.ORDERS }));
            if (self.preprocessing != null and Inheritance.call(self.preprocessing.?, "compareTo", .{ self.ON }) == 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Adding Preprocessing Orders"), self, String.literal("toXmlNode") });
                }
                const orderHistoryVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(OrderHistoryEntityFactory.getInstance().?, "getOrders", .{ OrderHistoryData.PREPROCESSING, self.fromDate, self.toDate }));
                const size: i32 = orderHistoryVector.?.size();
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const orderHistory: ?*OrderHistory = Inheritance.cast(?*OrderHistory, Inheritance.call(orderHistoryVector.?, "get", .{ index }));
                    _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(orderHistory.?, "toXmlNode", .{ document }) });
                    }
                }
            }
            if (self.shipped != null and Inheritance.call(self.shipped.?, "compareTo", .{ self.ON }) == 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Adding Shipped Orders"), self, String.literal("toXmlNode") });
                }
                const orderHistoryVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(OrderHistoryEntityFactory.getInstance().?, "getOrders", .{ OrderHistoryData.SHIPPED, self.fromDate, self.toDate }));
                const size: i32 = orderHistoryVector.?.size();
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const orderHistory: ?*OrderHistory = Inheritance.cast(?*OrderHistory, Inheritance.call(orderHistoryVector.?, "get", .{ index }));
                    _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(orderHistory.?, "toXmlNode", .{ document }) });
                    }
                }
            }
            if (self.partiallyShipped != null and Inheritance.call(self.partiallyShipped.?, "compareTo", .{ self.ON }) == 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Adding Partially Shipped Orders"), self, String.literal("toDomNode") });
                }
                const orderHistoryVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(OrderHistoryEntityFactory.getInstance().?, "getOrders", .{ OrderHistoryData.PARTIALLYSHIPPED, self.fromDate, self.toDate }));
                const size: i32 = orderHistoryVector.?.size();
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const orderHistory: ?*OrderHistory = Inheritance.cast(?*OrderHistory, Inheritance.call(orderHistoryVector.?, "get", .{ index }));
                    _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(orderHistory.?, "toXmlNode", .{ document }) });
                    }
                }
            }
            if (self.processing != null and Inheritance.call(self.processing.?, "compareTo", .{ self.ON }) == 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Adding Processing Orders"), self, String.literal("toXmlNode") });
                }
                const orderHistoryVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(OrderHistoryEntityFactory.getInstance().?, "getOrders", .{ OrderHistoryData.PROCESSING, self.fromDate, self.toDate }));
                const size: i32 = orderHistoryVector.?.size();
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const orderHistory: ?*OrderHistory = Inheritance.cast(?*OrderHistory, Inheritance.call(orderHistoryVector.?, "get", .{ index }));
                    _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(orderHistory.?, "toXmlNode", .{ document }) });
                    }
                }
            }
            if (self.cancelled != null and Inheritance.call(self.cancelled.?, "compareTo", .{ self.ON }) == 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Adding Cancelled Orders"), self, String.literal("view") });
                }
                const orderHistoryVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(OrderHistoryEntityFactory.getInstance().?, "getOrders", .{ OrderHistoryData.CANCELLED, self.fromDate, self.toDate }));
                const size: i32 = orderHistoryVector.?.size();
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const orderHistory: ?*OrderHistory = Inheritance.cast(?*OrderHistory, Inheritance.call(orderHistoryVector.?, "get", .{ index }));
                    _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(orderHistory.?, "toXmlNode", .{ document }) });
                    }
                }
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
//             return null;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            var isValid_: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (self.dateType == null or (Inheritance.call(self.dateType.?, "compareTo", .{ OrderHistoryData.TYPELONG }) != 0 and Inheritance.call(self.dateType.?, "compareTo", .{ OrderHistoryData.TYPECAESAR }) != 0)) {
                isValid_ = Inheritance.upcast(@TypeOf(isValid_), Boolean.FALSE);
            }
            if (self.dateType != null) {
                if (Inheritance.call(self.dateType.?, "compareTo", .{ OrderHistoryData.TYPELONG }) == 0) {
                    const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
                    const currentTime: i64 = calendar.?.getTimeInMillis();
                    var rangeDate: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
                    if (Inheritance.call(self.command.?, "compareTo", .{ self.VIEWORDERSINLASTHOUR }) == 0) {
                        const oneHour: i64 = 60 * 60 * 1000;
                        rangeDate = Inheritance.upcast(@TypeOf(rangeDate), String.valueOf(Inheritance.callStatic(Long, "create1", .{ oneHour }).?));
                    } else if (Inheritance.call(self.command.?, "compareTo", .{ self.VIEWORDERSINLASTDAY }) == 0) {
                        const oneDay: i64 = 24 * 60 * 60 * 1000;
                        rangeDate = Inheritance.upcast(@TypeOf(rangeDate), String.valueOf(Inheritance.callStatic(Long, "create1", .{ oneDay }).?));
                    } else if (Inheritance.call(self.command.?, "compareTo", .{ self.VIEWORDERSINLASTWEEK }) == 0) {
                        const oneWeek: i64 = 7 * 24 * 60 * 60 * 1000;
                        rangeDate = Inheritance.upcast(@TypeOf(rangeDate), String.valueOf(Inheritance.callStatic(Long, "create1", .{ oneWeek }).?));
                    } else if (Inheritance.call(self.command.?, "compareTo", .{ self.VIEWORDERSINLAST30DAYS }) == 0) {
                        const thirtyDays: i64 = 30 * 24 * 60 * 60 * 1000;
                        rangeDate = Inheritance.upcast(@TypeOf(rangeDate), String.valueOf(Inheritance.callStatic(Long, "create1", .{ thirtyDays }).?));
                    } else if (Inheritance.call(self.command.?, "compareTo", .{ self.VIEWALLORDERS }) == 0) {
                        rangeDate = Inheritance.upcast(@TypeOf(rangeDate), String.valueOf(Inheritance.callStatic(Long, "create1", .{ currentTime }).?));
                    }
                    const rangeDateLong: i64 = Inheritance.callStatic(Long, "create1", .{ rangeDate }).longValue();
                    self.fromDate = Inheritance.upcast(@TypeOf(self.fromDate), String.valueOf(Inheritance.callStatic(Long, "create1", .{ currentTime - rangeDateLong }).?));
                    const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ currentTime }).?) });
                    self.toDate = time;
                } else if (Inheritance.call(self.dateType.?, "compareTo", .{ OrderHistoryData.TYPECAESAR }) == 0) {
                    const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
                    _ = Inheritance.call(TimeUtil.getInstance().?, "setCalendar", .{ calendar, self.fromYear, self.fromMonth, self.fromDay, self.fromHour });
                    self.fromDate = Inheritance.upcast(@TypeOf(self.fromDate), String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?));
                    _ = Inheritance.call(TimeUtil.getInstance().?, "setCalendar", .{ calendar, self.toYear, self.toMonth, self.toDay, self.toHour });
                    self.toDate = Inheritance.upcast(@TypeOf(self.toDate), String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?));
                }
                if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ self.toDate }) or self.toDate.?.length() > self.MAXLEN) {
                    isValid_ = Inheritance.upcast(@TypeOf(isValid_), Boolean.FALSE);
                }
                if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ self.fromDate }) or self.fromDate.?.length() > self.MAXLEN) {
                    isValid_ = Inheritance.upcast(@TypeOf(isValid_), Boolean.FALSE);
                }
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Attempt to View orders in (fromDate=") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.fromDate });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(",toDate=") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.toDate });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(")") });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            }
            return isValid_;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Exception in validation"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
    

    // throws Exception
    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const result: ?*StringMaker = StringMaker.create();
            if (self.dateType == null or (Inheritance.call(self.dateType.?, "compareTo", .{ OrderHistoryData.TYPELONG }) != 0 and Inheritance.call(self.dateType.?, "compareTo", .{ OrderHistoryData.TYPECAESAR }) != 0)) {
                _ = Inheritance.call(result.?, "append", .{ String.literal("DATETYPE not recognized") });
            }
            if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ self.toDate }) or self.toDate.?.length() > self.MAXLEN) {
                _ = Inheritance.call(result.?, "append", .{ String.literal("Invalid To Date") });
            }
            if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ self.fromDate }) or self.fromDate.?.length() > self.MAXLEN) {
                _ = Inheritance.call(result.?, "append", .{ String.literal("Invalid From Date") });
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(result)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Getting Validation Info");
    }
};

