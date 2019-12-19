package main

import (
	"flag"
	"fmt"
	"strconv"
	"strings"
)

const (
	ADS_ENTITY_TYPE_ASSET                    = 0x01
	ADS_ENTITY_TYPE_AUDIENCE                 = 0x03
	ADS_ENTITY_TYPE_SECTION                  = 0x04
	ADS_ENTITY_TYPE_NETWORK                  = 0x06
	ADS_ENTITY_TYPE_MRM_RULE                 = 0x0B
	ADS_ENTITY_TYPE_MRM_RULE_APPLICATION     = 0x0C
	ADS_ENTITY_TYPE_TARGETING_TERM           = 0x0F
	ADS_ENTITY_TYPE_ADVERTISER_CATEGORY      = 0x13
	ADS_ENTITY_TYPE_COMSCORE_TERM            = 0x16
	ADS_ENTITY_TYPE_TARGETING_CRITERIA       = 0x0E
	ADS_ENTITY_TYPE_TARGETING_FAKED_CRITERIA = 0x10
	ADS_ENTITY_TYPE_AD_UNIT                  = 0x15
	ADS_ENTITY_TYPE_ADVERTISEMENT            = 0x1D
	ADS_ENTITY_TYPE_CREATIVE                 = 0x1E
	ADS_ENTITY_TYPE_CONTENT_TYPE             = 0x21
	ADS_ENTITY_TYPE_ADVERTISER               = 0x23
	ADS_ENTITY_TYPE_AGENCY                   = 0x24
	ADS_ENTITY_TYPE_CREATIVE_RENDITION       = 0x28
	ADS_ENTITY_TYPE_CREATIVE_RENDITION_ASSET = 0x29
	ADS_ENTITY_TYPE_BASE_AD_UNIT             = 0x2A
	ADS_ENTITY_TYPE_AD_UNIT_RESTRICTION      = 0x2B
	ADS_ENTITY_TYPE_USER_CUSTOM_AD_SLOT      = 0x2D
	ADS_ENTITY_TYPE_CREATIVE_API             = 0x2F
	ADS_ENTITY_TYPE_USER_CUSTOM_SUB_AD_SLOT  = 0x30
	ADS_ENTITY_TYPE_AIRING_BREAK             = 0x31
	ADS_ENTITY_TYPE_AIRING_OPPORTUNITY       = 0x32
	ADS_ENTITY_TYPE_JIT_CREATIVE             = 0x33
	ADS_ENTITY_TYPE_ADVERTISEMENT_ROOT       = 0x81
	ADS_ENTITY_TYPE_SYSTEM_ADVERTISEMENT     = 0x84
	ADS_ENTITY_TYPE_ALL_MIRROR_ASSET         = 0x87
	ADS_ENTITY_TYPE_ALL_MIRROR_SECTION       = 0x88
	ADS_ENTITY_TYPE_CAMPAIGN                 = 0x95
	ADS_ENTITY_TYPE_NIELSEN_DEMOGRAPHIC      = 0xA0
	ADS_ENTITY_TYPE_COMSCORE_DEMOGRAPHIC     = 0xA1
	ADS_ENTITY_TYPE_CONCRETE_EVENT           = 0xB0
	ADS_ENTITY_TYPE_ABSTRACT_EVENT           = 0xB1
	ADS_ENTITY_TYPE_CONTENT_PACKAGE          = 0xB2
	ADS_AB_TEST_COLLECTION                   = 0xB3
	ADS_ENTITY_TYPE_BRAND                    = 0xB4
	ADS_ENTITY_TYPE_INBOUND_MRM_RULE         = 0xB5
	ADS_ENTITY_TYPE_DEAL                     = 0xB7
	ADS_ENTITY_TYPE_BUYER                    = 0xB8
	ADS_ENTITY_TYPE_BUSINESS_UNIT_OWNER      = 0xC0
)

// main ad 11111111,2222222,3333333,444444,55555
func main() {
	flag.Parse()
	entityType := flag.Arg(0)
	idsStr := flag.Arg(1)
	idsStr = strings.TrimSpace(idsStr)
	if len(idsStr) == 0 {
		fmt.Println("please input ids")
		return
	}
	ids := strings.Split(idsStr, ",")

	ret := make(map[string]string, len(ids))
	for _, id := range ids {
		// ignore empty string
		id = strings.TrimSpace(id)
		if len(id) == 0 {
			continue
		}
		idInt, err := strconv.Atoi(id)
		if err != nil {
			ret[id] = fmt.Sprintf("id:%s is not int\n", id)
			continue
		}
		wrappedId := uint64(idInt)
		actualIdStr := ""

		if entityType == "ad" {
			actualId := ^(uint64(ADS_ENTITY_TYPE_ADVERTISEMENT << 56)) & wrappedId
			actualIdStr = strconv.Itoa(int(actualId))

		} else if entityType == "network" {
			actualId := ^(uint64(ADS_ENTITY_TYPE_NETWORK << 56)) & wrappedId
			actualIdStr = strconv.Itoa(int(actualId))

		} else if entityType == "rule" {
			actualId := ^(uint64(ADS_ENTITY_TYPE_MRM_RULE << 56)) & wrappedId
			actualIdStr = strconv.Itoa(int(actualId))

		} else if entityType == "rule_app" {
			actualId := ^(uint64(ADS_ENTITY_TYPE_MRM_RULE_APPLICATION << 56)) & wrappedId
			actualIdStr = strconv.Itoa(int(actualId))

		} else if entityType == "asset" {
			actualId := ^(uint64(ADS_ENTITY_TYPE_ASSET << 56)) & wrappedId
			actualIdStr = strconv.Itoa(int(actualId))

		} else if entityType == "section" {
			actualId := ^(uint64(ADS_ENTITY_TYPE_SECTION << 56)) & wrappedId
			actualIdStr = strconv.Itoa(int(actualId))

		} else if entityType == "targeting_term" {
			actualId := ^(uint64(ADS_ENTITY_TYPE_TARGETING_TERM << 56)) & wrappedId
			actualIdStr = strconv.Itoa(int(actualId))

		} else if entityType == "ad_unit" {
			actualId := ^(uint64(ADS_ENTITY_TYPE_AD_UNIT << 56)) & wrappedId
			actualIdStr = strconv.Itoa(int(actualId))

		} else if entityType == "audience" {
			actualId := ^(uint64(ADS_ENTITY_TYPE_AUDIENCE << 56)) & wrappedId
			actualIdStr = strconv.Itoa(int(actualId))

		} else if entityType == "targeting_criteria" {
			actualId := ^(uint64(ADS_ENTITY_TYPE_TARGETING_CRITERIA << 56)) & wrappedId
			actualIdStr = strconv.Itoa(int(actualId))

		} else if entityType == "creative" {
			actualId := ^(uint64(ADS_ENTITY_TYPE_CREATIVE << 56)) & wrappedId
			actualIdStr = strconv.Itoa(int(actualId))

		} else if entityType == "creative_rendition" {
			actualId := ^(uint64(ADS_ENTITY_TYPE_CREATIVE_RENDITION << 56)) & wrappedId
			actualIdStr = strconv.Itoa(int(actualId))

		} else {
			actualIdStr = "unknown entity type"
		}
		ret[id] = actualIdStr
	}

	fmt.Printf("type: %s, output result:\n", entityType)
	for key, value := range ret {
		fmt.Printf("%s -> %s \n", key, value)
	}
	fmt.Println("ending...")
}
