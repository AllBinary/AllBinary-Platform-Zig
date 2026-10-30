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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const AbContext = @import("org/allbinary/business/context/AbContext.zig").AbContext;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const AcceptableResponseGenerator = @import("org/allbinary/logic/communication/http/AcceptableResponseGenerator.zig").AcceptableResponseGenerator;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const UserEmailEventNameData = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventNameData.zig").UserEmailEventNameData;
const UserEmailEventHandler = @import("org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler.zig").UserEmailEventHandler;
const AdminUserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons.zig").AdminUserEmailEventHandlerSingletons;
const StoreAdminUserEmailEventHandlerSingletons = @import("org/allbinary/logic/communication/smtp/event/handler/factory/StoreAdminUserEmailEventHandlerSingletons.zig").StoreAdminUserEmailEventHandlerSingletons;
const AdminEmailInfo = @import("org/allbinary/logic/communication/smtp/info/AdminEmailInfo.zig").AdminEmailInfo;
const BasicEmailInfo = @import("org/allbinary/logic/communication/smtp/info/BasicEmailInfo.zig").BasicEmailInfo;
const EmailInfo = @import("org/allbinary/logic/communication/smtp/info/EmailInfo.zig").EmailInfo;
const StoreEmailInfo = @import("org/allbinary/logic/communication/smtp/info/StoreEmailInfo.zig").StoreEmailInfo;
const SearchParams = @import("org/allbinary/logic/control/search/SearchParams.zig").SearchParams;
const SearchRequest = @import("org/allbinary/logic/control/search/SearchRequest.zig").SearchRequest;
const FileUtil = @import("org/allbinary/logic/io/file/FileUtil.zig").FileUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ServiceClientInformationInterfaceFactory = @import("org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory.zig").ServiceClientInformationInterfaceFactory;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const ProductListingFactory = @import("views/admin/inventory/listings/ProductListingFactory.zig").ProductListingFactory;
const TagHelperInterface = @import("admin/taghelpers/TagHelperInterface.zig").TagHelperInterface;

pub const StaticPagesRequestHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.StaticPagesRequestHelper";
    pub const java_interfaces = .{ TagHelperInterface };
    base: AbContext = undefined,
    logUtil: ?*LogUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    request: ?*HttpServletRequest = null,
    storeName: ?*String = null,
    searchParams: ?*SearchParams = null,
    xslFile: ?*String = null,
    // Implements TagHelperInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.abeClientInformation = Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.getInstance());
        
        this.storeName = null;
        this.searchParams = null;
        
    }
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbContext, "create2", .{ propertiesHashMap, pageContext }).*;
        this.initFields();
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        this.xslFile = Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ TransformInfoData.getInstance().?.TEMPLATEFILENAME }));
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getFormData(self: *Self) void {
        self.storeName = Inheritance.upcast(@TypeOf(self.storeName), Inheritance.call(self.request.?, "getParameter", .{ StoreFrontData.getInstance().?.NAME }));
        self.searchParams = Inheritance.callStatic(SearchParams, "create1", .{ self.request });
    }
    

    // throws Exception
    pub fn email(self: *Self) void {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Generated Static Pages Notification Email"), self, String.literal("email") });
            }
            const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ self.storeName }));
            const adminEmailSubject: ?*String = String.literal("Generated Static Pages Email Notification");
            const adminEmailTextBody: ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Generated static pages for store: "), self.storeName));
            const adminBasicEmailInfo: ?*BasicEmailInfo = Inheritance.cast(?*BasicEmailInfo, Inheritance.callStatic(AdminEmailInfo, "create2", .{ adminEmailSubject, adminEmailTextBody }));
            const storeAdminBasicEmailInfo: ?*BasicEmailInfo = Inheritance.cast(?*BasicEmailInfo, Inheritance.callStatic(StoreEmailInfo, "create3", .{ storeFrontInterface, adminEmailSubject, adminEmailTextBody }));
            const storeAdminEmailInfo: ?*EmailInfo = Inheritance.callStatic(EmailInfo, "create1", .{ storeAdminBasicEmailInfo });
            const adminEmailInfo: ?*EmailInfo = Inheritance.callStatic(EmailInfo, "create1", .{ adminBasicEmailInfo });
            const adminUserEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(AdminUserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ self.abeClientInformation, UserEmailEventNameData.STOREGENERATINGSTATICPAGES }));
            const storeAdminUserEmailEventHandler: ?*UserEmailEventHandler = Inheritance.upcast(?*UserEmailEventHandler, Inheritance.call(StoreAdminUserEmailEventHandlerSingletons.getInstance().?, "getInstance", .{ UserEmailEventNameData.STOREGENERATINGSTATICPAGES, self.abeClientInformation, storeFrontInterface }));
            _ = Inheritance.call(storeAdminUserEmailEventHandler.?, "receiveEmailInfo", .{ UserEmailEventNameData.STOREGENERATINGSTATICPAGES, storeAdminEmailInfo });
            _ = Inheritance.call(adminUserEmailEventHandler.?, "receiveEmailInfo", .{ UserEmailEventNameData.STOREGENERATINGSTATICPAGES, adminEmailInfo });
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("email"), e });
//             }
    }
    

    pub fn generateStaticPages(self: *Self) ?*String {
        { // try
            const contentType: ?*String = Inheritance.upcast(?*String, Inheritance.call(AcceptableResponseGenerator.getInstance().?, "get", .{ self.request }));
            const searchRequest: ?*SearchRequest = Inheritance.callStatic(SearchRequest, "create6", .{ null, self.searchParams, self.xslFile, contentType, Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.receiver(self, "getPageContext").getPageContext() });
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(ProductListingFactory, "getInstance", .{ searchRequest }).?, "generateAll", .{ self.storeName }));
            _ = self.email();
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("generateStaticPages()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to generate staticpages table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("generateStaticPages()"), e });
//             }
//             return @"error";
    }
    

    pub fn makePublic(self: *Self) ?*String {
        { // try
            const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ self.storeName }));
            const fromAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Inheritance.receiver(storeFrontInterface.?, "getTestHtmlPath").getTestHtmlPath() + Inheritance.receiver(storeFrontInterface.?, "getStaticPath").getStaticPath(), StringUtil.getInstance().?.EMPTY_STRING });
            const toAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ String.plus(String.plus(String.plus(URLGLOBALS.getWebappPath(), Inheritance.receiver(storeFrontInterface.?, "getName").getName()), AbPathData.getInstance().?.SEPARATOR), Inheritance.receiver(storeFrontInterface.?, "getStaticPath").getStaticPath()), StringUtil.getInstance().?.EMPTY_STRING });
            _ = Inheritance.call(FileUtil.getInstance().?, "copy", .{ fromAbPath, toAbPath });
            const success: ?*String = String.literal("Made Public");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("makePublic()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to makePublic"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("makePublic()"), e });
//             }
//             return @"error";
    }
};

