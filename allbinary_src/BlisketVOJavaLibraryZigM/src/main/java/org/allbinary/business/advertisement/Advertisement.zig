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
// package org.allbinary.business.advertisement

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AdvertisementImageInterface = @import("org/allbinary/business/advertisement/image/AdvertisementImageInterface.zig").AdvertisementImageInterface;
const AdvertisementProductInterface = @import("org/allbinary/business/advertisement/product/AdvertisementProductInterface.zig").AdvertisementProductInterface;
const AdvertisementThumbnailInterface = @import("org/allbinary/business/advertisement/thumbnail/AdvertisementThumbnailInterface.zig").AdvertisementThumbnailInterface;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const DisplayInBrowserContraintsInterface = @import("org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface.zig").DisplayInBrowserContraintsInterface;
const AdvertisementInterface = @import("org/allbinary/business/advertisement/AdvertisementInterface.zig").AdvertisementInterface;

pub const Advertisement = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.Advertisement";
    pub const java_interfaces = .{ AdvertisementInterface };
    artist: ?*String = null,
    artistLink: ?*String = null,
    title: ?*String = null,
    dateAdded: ?*String = null,
    directory: ?*String = null,
    framedLink: ?*String = null,
    rank: i32 = 0,
    listPrice: ?*Money = null,
    ourPrice: ?*Money = null,
    image: ?*AdvertisementImageInterface = null,
    product: ?*AdvertisementProductInterface = null,
    thumbnail: ?*AdvertisementThumbnailInterface = null,
    displayInBrowserContraintsInterface: ?*DisplayInBrowserContraintsInterface = null,
    // Implements AdvertisementInterface

    fn initFields(this: *Self) void {
        this.artist = null;
        this.artistLink = null;
        this.title = null;
        this.dateAdded = null;
        this.directory = null;
        this.framedLink = null;
        this.rank = 0;
        this.listPrice = null;
        this.ourPrice = null;
        this.image = null;
        this.product = null;
        this.thumbnail = null;
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.displayInBrowserContraintsInterface = null;
        return this;
    }
    

    pub fn getArtist(self: *Self) ?*String {
        return self.artist;
    }
    

    pub fn setArtist(self: *Self, artist: ?*String) void {
        self.artist = artist;
    }
    

    pub fn getArtistLink(self: *Self) ?*String {
        return self.artistLink;
    }
    

    pub fn setArtistLink(self: *Self, artistLink: ?*String) void {
        self.artistLink = artistLink;
    }
    

    pub fn getTitle(self: *Self) ?*String {
        return self.title;
    }
    

    pub fn setTitle(self: *Self, title: ?*String) void {
        self.title = title;
    }
    

    pub fn getDateAdded(self: *Self) ?*String {
        return self.dateAdded;
    }
    

    pub fn setDateAdded(self: *Self, dateAdded: ?*String) void {
        self.dateAdded = dateAdded;
    }
    

    pub fn getDirectory(self: *Self) ?*String {
        return self.directory;
    }
    

    pub fn setDirectory(self: *Self, directory: ?*String) void {
        self.directory = directory;
    }
    

    pub fn getFramedLink(self: *Self) ?*String {
        return self.framedLink;
    }
    

    pub fn setFramedLink(self: *Self, framedLink: ?*String) void {
        self.framedLink = framedLink;
    }
    

    pub fn getListPrice(self: *Self) ?*Money {
        return self.listPrice;
    }
    

    pub fn setListPrice(self: *Self, listPrice: ?*Money) void {
        self.listPrice = listPrice;
    }
    

    pub fn getOurPrice(self: *Self) ?*Money {
        return self.ourPrice;
    }
    

    pub fn setOurPrice(self: *Self, ourPrice: ?*Money) void {
        self.ourPrice = ourPrice;
    }
    

    pub fn getRank(self: *Self) i32 {
        return self.rank;
    }
    

    pub fn setRank(self: *Self, rank: i32) void {
        self.rank = rank;
    }
    

    pub fn getImage(self: *Self) ?*AdvertisementImageInterface {
        return self.image;
    }
    

    pub fn setImage(self: *Self, image: ?*AdvertisementImageInterface) void {
        self.image = image;
    }
    

    pub fn getProduct(self: *Self) ?*AdvertisementProductInterface {
        return self.product;
    }
    

    pub fn setProduct(self: *Self, product: ?*AdvertisementProductInterface) void {
        self.product = product;
    }
    

    pub fn getThumbnail(self: *Self) ?*AdvertisementThumbnailInterface {
        return self.thumbnail;
    }
    

    pub fn setThumbnail(self: *Self, thumbnail: ?*AdvertisementThumbnailInterface) void {
        self.thumbnail = thumbnail;
    }
    

    pub fn getDisplayInBrowserContraintsInterface(self: *Self) ?*DisplayInBrowserContraintsInterface {
        return self.displayInBrowserContraintsInterface;
    }
};

