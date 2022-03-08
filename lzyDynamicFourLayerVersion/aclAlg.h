
#pragma once

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

    typedef struct AclRule_t {
        struct {
            uint32_t ip, len;
        } sip, dip;
        struct {
            uint16_t from, to;
        } sport, dport;
        uint8_t proto; /* Ϊ0��ʾ����ע */
        uint32_t index; /* ����index����������ȼ���ֵԽС���ȼ�Խ�ߣ�0��ʾ��Ч */
    } AclRule;

    typedef struct AclTuple_t {
        uint32_t sip, dip;
        uint16_t sport, dport;
        uint8_t proto;
    } AclTuple;

    /* �����Ҫʹ�ö��ڴ���Դ����ʹ��aclMemMalloc��aclMemFree����������ͷ�
     * !!! ��ֱֹ��ʹ��ϵͳmalloc��free !!! */
    void* aclMemMalloc(size_t size);
    void* aclMemCalloc(int32_t n, size_t size);
    void  aclMemFree(void *ptr);
    #define malloc forbidden_malloc()
    #define free forbidden_free()
    #define calloc forbidden_calloc()

    typedef struct AclTable_t AclTable;

    /* ����һ��ACL Table���󣬾����AclTable���ݽṹ���û����о���
     * ����û�����Ҫ����Table����ֱ�ӷ���NULL���� */
    AclTable* aclCreate();

    /* ��ACL Table����� num ��ACL���򣬳ɹ�����0�����򷵻ط�0 */
    uint32_t aclInsert(AclTable *tbl, AclRule *rules, uint32_t num);

    /* ��ѯһ��ACL��Ԫ�飬�����������ӵĹ����򷵻ظù����Ӧ��index�����򷵻�0 */
    uint32_t aclSearch(AclTable *tbl, AclTuple *tuple);

#ifdef __cplusplus
}
#endif
